require_relative '02_searchable'
require 'active_support/inflector'

# Phase IIIa
class AssocOptions
  attr_accessor(
    :foreign_key,
    :class_name,
    :primary_key
  )

  def model_class
    # @class_name
  end

  def table_class
    
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
  def belongs_to(name, options = {})
    # ...
  end

  def has_many(name, options = {})
    # ...
  end

  def assoc_options
    # Wait to implement this in Phase IVa. Modify `belongs_to`, too.
  end
end

class SQLObject
  # extend Associatable
end
