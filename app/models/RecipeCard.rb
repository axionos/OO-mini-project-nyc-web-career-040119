class RecipeCard
  attr_reader :recipe, :date, :rating, :user

  @@all = []
  def initialize(user, recipe, date, rating)
    @user = user
    @recipe = recipe
    @date = date
    @rating = rating
    @@all << self
  end

  #instance methods
  # def date
  #
  # end

  # def rating
  #
  # end

  # def user
  #
  # end

  # def recipe
  #
  # end



  #class methods

  def self.all
    @@all
  end

end
