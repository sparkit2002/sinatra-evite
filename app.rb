require 'sinatra'
require 'sinatra/activerecord'
require './config/environments' #database configuration
require './models/model'
require './models/person'
require 'byebug'       #Model class

get '/' do
	erb :index
end

post '/submit' do

	@person = Person.new(params[:person])
	if @person.save
		redirect '/models'
	else
		"Sorry, there was an error!"
	end
end

get '/models' do
	@people = Person.all
	erb :people
end
