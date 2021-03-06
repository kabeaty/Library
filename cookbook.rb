class Cookbook
  attr_accessor :title, :recipes, :author

  def initialize(title, author)
    @title = title
    @recipes = []
    @author = author
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

  def print_cookbook
      puts "Cookbook Title: #{title}"
      puts "Author: #{author}"
    @recipes.each do |recipe|
      counter = 1
      puts "Recipe: #{recipe.title}"
      puts "Ingredients: #{recipe.ingredients.join(", ")}"
      recipe.steps.each do |step|
        puts "#{counter.to_i}. #{step}"
        counter += 1
        end
    end
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

  def number_ingredients
    puts "It takes #{ingredients.length} ingredients to make #{title}."
    if ingredients.length <= 3
      puts "This is a simple recipe."
    else
      puts "This recipe requires some preparation."
    end
  end

end












