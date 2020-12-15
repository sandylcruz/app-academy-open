class TagTopic < ActiveRecord::Base
  has_many: shortened_urls through: source:

end