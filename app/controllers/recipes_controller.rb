# Controller for Food2Fork API
class RecipesController < ApplicationController
  def index
    @search_term = params[:looking_for] || 'broccoli'
    # @recipes = Recipe.for(@search_term)
    @response = HTTParty.get("http://food2fork.com/api/search?key=5b778f1043cebc3d2ef97301d9e0b8ca&q=#{@search_term}")
    render json: @response.body, status: 200
  end
end
