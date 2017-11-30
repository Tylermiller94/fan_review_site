class Movie < ActiveRecord::Base
  validates :name, :release, :description :presence => true
end
