class Entry < ActiveRecord::Base
  validates_presence_of :title, :description
  has_many :categorizations
  has_many :categories, through: :categorizations
end
