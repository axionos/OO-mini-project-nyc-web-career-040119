class User
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  #instance methods
  def recipes
    RecipeCard.all.select do |recipe|
      recipe.user.name == self.name
    end
  end

  def add_recipe_card(user, recipe, date, rating)
    RecipeCard.new(user, recipe, date, rating)
  end

  def declare_allergy(user, ingredient)
    Allergy.new(user, ingredient)
  end

  def allergens
    Allergy.all.map do |recipe|
      if recipe.user.name == self.name
         recipe.ingredient
      end.compact
    end
  end

  def top_three_recipes

    RecipeCard.all.max_by(3) do |recipes|
      binding.pry
      if recipes.user.name == self.name
       recipes.rating
     end
    end
      # if recipes.user.name == self.name
      #   recipes.rating.map do |recipe|
      #
      #     # recipe
      #   end
      # end
    # end.compact.max(3)
    #
    # RecipeCard.all.select do |recipe|
    #
    #   if recipe.rating == top_three
    #   end
    # end


  end

  def most_recent_recipe

  end

  #class methods

  def self.all
    @@all
  end
end
