class Entry < ActiveRecord::Base
  validates_presence_of :title, :description
  has_many :categories, through: :categorizations

  def self.category_list
    ["This", "That", "Another", "Blah"]
  end
end
