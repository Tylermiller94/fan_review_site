class List < ActiveRecord::Base
  validates :name, :release, :description, :presence => true
  
end
