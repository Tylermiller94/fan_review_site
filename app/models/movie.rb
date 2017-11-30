class List < ActiveRecord::Base
  validates :name, :release, :description, :presence => true

  has_many :reviews
end
