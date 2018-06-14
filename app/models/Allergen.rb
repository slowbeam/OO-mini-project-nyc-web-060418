class Allergen

  @@all = []

  attr_reader :users, :ingredient 

  def initialize(users = [], ingredient)
    @users = users
    @ingredient = ingredient
    @@all << self
  end

  def self.all
    @@all
  end

end
