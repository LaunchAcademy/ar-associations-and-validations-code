require 'sinatra'
require_relative 'config/application'

set :bind, '0.0.0.0'  # bind to all interfaces

enable :sessions

get '/recipes' do
  @recipes = Recipe.all
  erb :index
end

get '/recipes/:id' do
  # how would we query for all related comments for this recipe?
  # how would we query for all related ingredients? 

  erb :show
end

