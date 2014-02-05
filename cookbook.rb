class Cookbook

  def initialize(title)
    @title = title
  end

end

class Recipe

  def initialize(title, ingredients, steps)
    @title = title
    @ingredients = ingredients
    @steps = steps
  end

end
