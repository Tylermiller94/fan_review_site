class Review < ActiveRecord::Base
  validates :author, :content_body, :rating, :movie_id, :presence => true

  belongs_to :movie
end
