require 'sinatra'
require 'sinatra/activerecord'
require './config/environments' #database configuration
require './models/model'
require './models/person'
require './models/event'
require './models/registration'
require 'byebug'

get '/' do
	erb :index
end

get '/person/new' do
	erb :new_person
end

get '/event/new' do
	erb :new_event
end

get '/registration/new' do
	erb :new_registration
end


post '/person/new' do
	@person = Person.new(params[:person])
	if @person.save
		redirect '/people'
	else
		"Sorry, there was an error!"
	end
end

post '/event/new' do
	@event = Event.new(params[:event])
	if @event.save
		redirect '/events'
	else
		"Sorry, there was an error!"
	end
end

post '/registrstion/new' do
	@registration = Registration.new(params[:registration])
	if @registration.save
		redirect '/registrations'
	else
		"Sorry, there was an error!"
	end
end

get '/people' do
	@people = Person.all
	erb :people
end

get '/events' do
	@events = Event.all
	erb :events
end

get '/registrations' do
	@registrations = Registration.all
	erb :registrations
end
