class RecipeCard

  @@all = []

  attr_reader :recipe, :date
  attr_accessor :users, :rating

  def initialize(recipe, date, rating, users = [])
    @recipe = recipe
    @date = date
    @users = users
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end
end
