class List < ActiveRecord::Base
  validates :name, :release, :desription, :presence => true
end
