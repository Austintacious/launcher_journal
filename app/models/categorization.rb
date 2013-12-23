class Categorization < ActiveRecord::Base
  validates_presence_of :category_id, :entry_id
  belongs_to :category
  belongs_to :entry
end
