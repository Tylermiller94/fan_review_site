class Movie < ActiveRecord::Base
  validates :name, :release, :description, :presence => true
    scope :recently_added, -> { order(created_at: :desc).limit(3) }
    scope :made_in_usa, -> { where(description: "USA") }
    scope :most_reviews, -> {(
      select("movies.*, count(reviews.id) as reviews_count")
      .joins(:reviews)
      .group("movies.id")
      .order("reviews_count desc")
      .first
      )}

    has_many :reviews
  end
