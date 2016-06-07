require 'sinatra'

get '/' do
  a = 4 * 7
  "#{a}"
end

get '/random-cat' do
  @rnd = rand
  @name = %w(Crap Poop Shit).sample
  erb :index
end

post '/named-cat' do
  @rnd = rand
  @name = params[:name]
  erb :index
end

get '/cat-form' do
  erb :cat_form
end
