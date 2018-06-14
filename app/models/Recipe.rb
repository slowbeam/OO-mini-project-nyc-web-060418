class Recipe

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_popular
    recipe_array = []
    all_recipe_cards = RecipeCard.all
    all_recipe_cards.each do |recipe_card|
      recipe_array << recipe_card.recipe
    end
    #iterate through the array
    #count how many times each item appears in the recipe_arra
    counted_hash = recipe_array.uniq.map {|recipe| [recipe, recipe_array.count(recipe)] }.to_h
    counted_hash.key(counted_hash.values.max)
  end

  def users
    RecipeCard.all.select do |recipe_card|
      binding.pry
      recipe_card.recipe == self
    end
  end

end
