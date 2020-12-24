require_relative '02_searchable'
require 'active_support/inflector'

# Phase IIIa
class AssocOptions
  attr_accessor(
    :foreign_key,
    :class_name,
    :primary_key
  )

  def model_class # returns the class NOT the instance
    @class_name.constantize # returns the class_name class itself
  end

  def table_name
    model_class::table_name
  end
end

class BelongsToOptions < AssocOptions
  def initialize(name, options = {})
    defaults = {
      foreign_key: "#{name}_id".to_sym,
      class_name: "#{name}".camelcase,
      primary_key: :id
    }

    @foreign_key = options.fetch(:foreign_key, defaults[:foreign_key])
    @class_name = options.fetch(:class_name, defaults[:class_name])
    @primary_key = options.fetch(:primary_key, defaults[:primary_key])
  end
end

# has_many(
#   :cats,
#   class_name: 'Cat',
#   foreign_key: :user_id,
#   primary_key: :id
# )

class HasManyOptions < AssocOptions
  def initialize(name, self_class_name, options = {})
    defaults = {
      foreign_key: "#{self_class_name.underscore}_id".to_sym,
      class_name: name.to_s.singularize.titleize,
      primary_key: :id
    }

    @foreign_key = options.fetch(:foreign_key, defaults[:foreign_key])
    @class_name = options.fetch(:class_name, defaults[:class_name])
    @primary_key = options.fetch(:primary_key, defaults[:primary_key])
  end
end

module Associatable
  # Phase IIIb
  def belongs_to(name, options = {}) # creates an instance method that returns the associated instance of associated class
    options = BelongsToOptions.new(name, options)
    
    define_method(name) do
      # Must return the correct instance of the class it belongs to
      foreign_key_value = self.send(options.foreign_key) #self = instance of SQLObject class
      target_model_class = options.model_class
      primary_key_name = options.primary_key
      target_model_class.where(primary_key_name => foreign_key_value).first
    end
  end

  def has_many(name, options = {}) # creates an instance method that returns all associated instances of associated class
    options = HasManyOptions.new(name, self.name, options)

    define_method(name) do # creates an instance method for the movie class
      # Returns a collection of other instances in another class
      primary_key_value = self.send(options.primary_key)
      target_model_class = options.model_class #options is an instance of the hasmanyoptions class
      primary_key_name = options.primary_key # symbol from options hash
      target_model_class.where(options.foreign_key => primary_key_value)
    end
  end

  def assoc_options
    # Wait to implement this in Phase IVa. Modify `belongs_to`, too.
  end
end

class SQLObject
  extend Associatable
end

# class Movie
#   has_many(
#     :actors,
#     class_name: 'Actor',
#     foreign_key: :movie_id,
#     primary_key: :id
#   )
# end

# class Actor
#   ...
# end

