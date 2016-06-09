# Import httparty gem
# require 'httparty'

# Model for Food2Fork API
class Recipe
  include HTTParty
  ENV['FOOD2FORK_KEY'] = '5b778f1043cebc3d2ef97301d9e0b8ca'
  base_uri 'http://food2fork.com/api'
  default_params key: ENV['FOOD2FORK_KEY']
  format :json

  def self.for(term)
    get('/search', query: { q: term })['recipes']
  end
end
