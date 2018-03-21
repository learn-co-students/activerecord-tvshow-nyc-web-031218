class Show < ActiveRecord::Base

  def self.highest_rating
    #binding.pry
    me = self.maximum(:rating)

  end

  def self.most_popular_show
    me = self.order("rating desc limit 1")[0]
  end

  def self.lowest_rating
    self.minimum(:rating)
  end

  def self.least_popular_show
    show = self.minimum(:rating)
    self.find_by(rating: show)
  end

  def self.ratings_sum
    self.sum(:rating)
  end

  def self.popular_shows
    self.where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    self.order('name')
  end
end
