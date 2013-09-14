require 'sinatra'

require './constants'

get '/' do
  @page_title = set_title('Home')

  erb :index
end

get '/our_story' do
  @page_title = set_title('Our Story')

  erb :our_story
end

get '/registry' do
  @page_title = set_title('Registry')

  erb :registry
end

get '/schedule' do
  @page_title = set_title('Schedule')

  erb :schedule
end

get '/travel' do
  @page_title = set_title('Travel')

  erb :travel
end

get '/hotels' do
  @page_title = set_title('Hotels')

  erb :hotels
end

get '/restaurants' do
  @page_title = set_title('Restaurants')

  erb :restaurants
end

get '/transportation' do
  @page_title = set_title('Transportation')

  erb :transportation
end

get '/things_to_do' do
  @page_title = set_title('Things To Do')

  erb :things_to_do
end

get '/rsvp' do
  @page_title = set_title('RSVP')

  erb :rsvp
end

get '/javascripts/jquery.function.js' do
  erb :'javascripts/jquery.function.js', layout: false
end

###########

def set_title(page_name)
  "#{GROOM_FIRST_NAME} &amp; #{BRIDE_FIRST_NAME} - #{page_name}"
end
