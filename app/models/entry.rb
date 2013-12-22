class Entry < ActiveRecord::Base
  validates_presence_of :title, :description
  has_many :categories
end
