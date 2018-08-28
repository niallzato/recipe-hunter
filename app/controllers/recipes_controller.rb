class RecipesController < ApplicationController
  def index
    search_term =  params[:search] || 'chocolate'
    @recipes = Recipe.for search_term
    @recipes = @recipes.empty? ? 'No recipes found' : @recipes
  end
end
