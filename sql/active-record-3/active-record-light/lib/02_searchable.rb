require_relative 'db_connection'
require_relative '01_sql_object'

module Searchable
  def where(params)
    values = params.keys.map { |key| "#{key} = ?"}
    new_values = values.join(" AND ")

    results = DBConnection.execute(<<-SQL, *params.values)
      SELECT *
      FROM #{table_name}
      WHERE #{new_values}
    SQL

    parse_all(results)
  end
end

class SQLObject
  extend Searchable
end
