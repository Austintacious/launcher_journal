class Category < ActiveRecord::Base
  validates_uniqueness_of :name
  validates :name, :format => { :with => /\A[a-zA-Z\s]+\z/ }
  has_many :categorizations
  has_many :entries, through: :categorizations
end
