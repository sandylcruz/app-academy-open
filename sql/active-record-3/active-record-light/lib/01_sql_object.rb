require_relative 'db_connection'
require 'active_support/inflector'
require 'set'
# NB: the attr_accessor we wrote in phase 0 is NOT used in the rest
# of this project. It was only a warm up.
class SQLObject
  def self.columns
    return @columns unless @columns.nil?

    columns = DBConnection.execute2(<<-SQL).first
      SELECT *
      FROM "#{self.table_name}"
    SQL

    @columns = columns.map { |x| x.to_sym }
  end

  def my_custom_attribute=(value)
    # thing.my_custom_attribute = 5
  end

  def self.finalize!
    columns.each do |column|
      define_method(column) do
        attributes[column]
      end

      define_method("#{column}=") do |value|
        attributes[column] = value
      end
    end
  end

  def self.table_name=(table_name)
    @table_name = table_name
  end

  def self.table_name
    @table_name || self.name.tableize
  end

  def self.all
    results = DBConnection.execute(<<-SQL)
      SELECT #{table_name}.*
      FROM #{table_name}
    SQL

    parse_all(results)
  end

  def self.parse_all(results)
    results.map do |result|
      self.new(result)
    end
  end

  def self.find(id)
    results = DBConnection.execute(<<-SQL)
      SELECT #{table_name}.*
      FROM #{table_name}
      WHERE #{id} == id
      LIMIT 1
    SQL

    parse_all(results).first
  end

  def initialize(params = {})
    columns_set = self.class.columns.to_set

    params.each do |key, value|
      attr_name = key.to_sym

      unless columns_set.include?(attr_name)
        raise "unknown attribute '#{attr_name}'"
      end

      self.send("#{attr_name}=", value)
    end
  end

  def attributes
    @attributes ||= {}
  end

  def attribute_values
    self.class.columns.map { |column_name| self.send(column_name) }
  end

  def insert
    columns = self.class.columns
    col_names = columns.join(", ")
    question_marks = Array.new(columns.length, "?").join(", ")

    DBConnection.execute(<<-SQL, *attribute_values)
      INSERT INTO #{self.class.table_name} (#{col_names})
      VALUES (#{question_marks})
    SQL

    self.id = DBConnection.last_insert_row_id
  end

  def update
    mapped_columns = self.class.columns.map { |column| "#{column} = ?" }
    joined_columns = mapped_columns.join(", ")

    DBConnection.execute(<<-SQL, *attribute_values, id)
      UPDATE #{self.class.table_name}
      SET #{joined_columns}
      WHERE #{self.class.table_name}.id = ?
    SQL
  end

  def save
    if id.nil?
      self.insert
    else
      self.update
    end
  end
end
