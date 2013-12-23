class Entry < ActiveRecord::Base
  validates_presence_of :title, :description
  has_many :categories, through: :categorizations

  def self.category_list
    ["Ruby", "Rails", "HTML", "Javascript", "CSS"]
  end
end
