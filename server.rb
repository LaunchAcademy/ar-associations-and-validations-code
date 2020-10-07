require 'sinatra'
require_relative 'config/application'

set :bind, '0.0.0.0'  # bind to all interfaces

enable :sessions

get '/recipes' do
  @recipes = Recipe.all
  erb :index
end

get '/recipes/:id' do
  id = params[:id]
  @recipe = Recipe.find(id)
  @comments = @recipe.comments
  @ingredients = @recipe.ingredients

  erb :show
end

