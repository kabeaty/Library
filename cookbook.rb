class Cookbook
  attr_accessor :title, :recipes

  def initialize(title)
    @title = title
    @recipes = []
  end

  def add_recipe(recipe)
    @recipes.push(recipe)
    puts "Added a recipe to the collection: #{recipe.title}"
  end

  def recipe_titles
    @recipes.each { |recipe| puts "#{recipe.title}" }
  end

  def recipe_ingredients
    @recipes.each { |recipe| puts "These are the ingredients for #{recipe.title}: #{recipe.ingredients.join(", ")}" }
  end

end

class Recipe
  attr_accessor :title
  attr_accessor :ingredients
  attr_accessor :steps

  def initialize(title, ingredients, steps)
    @title = title
    @ingredients = ingredients
    @steps = steps
  end

  def print_recipe
    puts "To make #{title}, use #{ingredients.join(", ")}, and follow these steps: #{steps.join(", ")}"
  end

end












