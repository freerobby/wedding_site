require 'sinatra'

require './constants'

get '/' do
  @page_title = set_title('Home')

  erb :index
end

get '/registry' do
  @page_title = set_title('Registry')

  erb :registry
end

get '/travel' do
  @page_title = set_title('Travel')

  erb :travel
end

get '/hotels' do
  @page_title = set_title('Hotels')

  erb :hotels
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
