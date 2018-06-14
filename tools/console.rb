require_relative '../config/environment.rb'

sandy = User.new("Sandy")
david = User.new("David")
tashawn = User.new("Tashawn")
andrew = User.new("Andrew")

milk = Ingredient.new("Milk")
flour = Ingredient.new("Flour")
wheat = Ingredient.new("Wheat")
sugar = Ingredient.new("Sugar")
peanuts = Ingredient.new("Peanuts")

chocolate_cake = Recipe.new("Chocolate Cake")
peanut_butter_cookies = Recipe.new("Peanut Butter Cookies")
sugar_cookies = Recipe.new("Sugar Cookies")

cc_ingredients = RecipeIngredient.new(chocolate_cake, ingredients = [milk, flour, sugar])
pbc_ingredients = RecipeIngredient.new(peanut_butter_cookies, ingredients =[sugar, flour, peanuts])
sc_ingredients = RecipeIngredient.new(sugar_cookies, ingredients = [sugar, milk, wheat])

cc_card = RecipeCard.new(chocolate_cake, "9/29/2018", 4, users = [sandy, tashawn])
pbc_card = RecipeCard.new(peanut_butter_cookies, "10/10/2018", 3, users = [andrew, tashawn])
sc_card = RecipeCard.new(sugar_cookies, "2/16/2018", 5, users = [david, sandy])
sc_card2 = RecipeCard.new(sugar_cookies, "5/21/2018", 2, users = [sandy, andrew])

lactose_intolerance = Allergen.new(users = [sandy], milk)
gluten_allergy = Allergen.new(users = [tashawn, andrew], wheat)
peanut_allergy = Allergen.new(users = [david, andrew], peanuts)
binding.pry
