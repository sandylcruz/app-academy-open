class Dog

  def initialize(name, breed, age, bark, favorite_foods)
    @name = name
    @breed = breed
    @age = age
    @bark = bark
    @favorite_foods = favorite_foods
  end

  def name
    @name
  end

  def breed
    @breed
  end

  def age
    @age
  end

  def age=(number)
    @age = number
  end

  def bark
    if Dog.age > 3
      bark.upcase
    else
      bark.downcase
    end
  end

  def favorite_foods
    @fav_foods
  end

  def favorite_food?(food)

  end

end
