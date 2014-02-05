class Cookbook

  def initialize(title)
    @title = title
  end

  def title
    @title
  end

  def title=(new_title)
    @title = new_title
  end

end

class Recipe

  def initialize(title, ingredients, steps)
    @title = title
    @ingredients = ingredients
    @steps = steps
  end

  def title
    @title
  end

  def ingredients
    @ingredients
  end

  def steps
    @steps
  end

  def title=(new_title)
    @title = new_title
  end

  def ingredients=(new_ingredients)
    @ingredients = new_ingredients
  end

  def steps=(new_steps)
    @steps = new_steps
  end

end












