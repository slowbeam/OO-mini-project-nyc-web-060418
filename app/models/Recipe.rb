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
    users_array = []
    matching_recipe_cards = RecipeCard.all.select do |recipe_card|
      recipe_card.recipe == self
    end
    matching_recipe_cards.each do |card|
    users_array << card.users
    end
    users_array.flatten.uniq
  end

  def ingredients
      #match current recipe to RecipeIngredient instance
    matching_rec_ing = RecipeIngredient.all.select do |recipe_ing|
      self == recipe_ing.recipe
    end
    matching_rec_ing[0].ingredients
  end

  def allergens
    allerg_array = Allergen.all.map do |allergen|
      allergen.ingredient
    end

    self.ingredients.select do |ing|
      allerg_array.include?(ing)
    end
  end

  def add_ingredients(new_ing)
    #find the RecipeIngredient instance that matches this recipe
    matching_rec_ing = RecipeIngredient.all.select do |recipe_ing|
      self == recipe_ing.recipe
    end

    new_ing.each do |ing|
    matching_rec_ing[0].ingredients << ing
    end
  end

end
