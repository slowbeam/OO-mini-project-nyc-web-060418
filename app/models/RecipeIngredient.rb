class RecipeIngredient

  @@all = []

  attr_reader :recipe, :ingredients 

  def initialize(recipe, ingredients = [])
    @recipe = recipe
    @ingredients = ingredients
    @@all << self
  end

  def self.all
    @@all
  end

end
