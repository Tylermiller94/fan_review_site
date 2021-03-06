class Review < ActiveRecord::Base
  validates :author, :content_body, :rating, :movie_id, :presence => true
  validates :rating, :presence => true
  validates :content_body, :presence => true
  belongs_to :movie
end
