require 'sinatra'
require_relative 'config/application'

set :bind, '0.0.0.0'  # bind to all interfaces

enable :sessions

get '/' do
  binding.pry
  @title = "Hello World"
  erb :index
end
