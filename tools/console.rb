require_relative '../config/environment.rb'

troy = User.new("Troy")
soyeong = User.new("Soyeong")

pizza_card = troy.add_recipe_card(troy, "pizza", "Jan 1", 5.0)
pasta_card = soyeong.add_recipe_card(soyeong, "pasta", "May 1", 5.0)
chicken_card = soyeong.add_recipe_card(soyeong, "chicken", "March 1", 3.0)
hamburger_card = troy.add_recipe_card(troy, "hamburger", "April 1", 4.0)
mac_n_cheese_card = soyeong.add_recipe_card(soyeong, "mac and cheese", "May 1", 4.5)
baked_potato_card = troy.add_recipe_card(troy, "baked potato", "May 1", 3.2)
steak_card = soyeong.add_recipe_card(soyeong, "steak", "May 1", 4.8)
curry_card = troy.add_recipe_card(troy, "curry", "April 1", 3.9)


troy_allergy = troy.declare_allergy(troy,"mushrooms")
soyeong_allery = soyeong.declare_allergy(soyeong,"oysters")
troy.declare_allergy(troy,"bulb-fish")

binding.pry
