require 'sinatra'

require './constants'

require 'pony'

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

post '/rsvp' do
  Pony.mail({
    to: 'Robby Grossman <robby@freerobby.com>',
    from: 'Wedding Response <noreply@robbyandkristin.com>',
    subject: 'Wedding Response Received',
    body: params_to_email_body(params),
    via: :smtp,
    via_options: {
      address: 'smtp.sendgrid.net',
      port: '587',
      user_name: ENV['SENDGRID_USERNAME'],
      password: ENV['SENDGRID_PASSWORD'],
      authentication: :plain,
      domain: 'robbyandkristin.com'
    }
  })
  redirect '/rsvp-success'
end

get '/rsvp-success' do
  @page_title = set_title('RSVP Recorded!')

  erb :'rsvp-success'
end

get '/javascripts/jquery.function.js' do
  erb :'javascripts/jquery.function.js', layout: false
end

###########

def set_title(page_name)
  "#{GROOM_FIRST_NAME} &amp; #{BRIDE_FIRST_NAME} - #{page_name}"
end

def params_to_email_body(params)
  params.inject('') do |result, kv|
    result += "#{kv[0]}: #{kv[1]}\n"
  end
end
