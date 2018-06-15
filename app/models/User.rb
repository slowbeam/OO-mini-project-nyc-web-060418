class User

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(recipe, date, rating, users = [self])
  end

  def declare_allergen(ingredient)
    Allergen.new(users = [self], ingredient)
  end

  def allergens
    allergen_array = []
    Allergen.all.each do |allergen|
      allergen.users.each do |user|
        # binding.pry
        if user.name == self.name
          allergen_array << allergen
        end
      end
    end
    allergen_array
  end

  def top_three_recipes
    users_cards = RecipeCard.all.select do |recipe_card|
      recipe_card.users == self
    end
    binding.pry
  end
end
