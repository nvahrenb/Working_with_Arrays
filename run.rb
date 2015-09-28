require 'sinatra'

get '/' do
  @varaible_for_view = 'Hi! I am a variable. the @ at the beginning will make it accessible in the erb/view file.'
  erb :index, layout: :main
end

get '/years' do

  @years = Array(1972..2013)

  erb :years, layout: :main
end

get '/states' do
  
  @states = ["Michigan", "Missouri", "Kansas", "Indiana", "Illinois"]
  
  puts "\nSorted:"
  puts @states.sort
  puts "\nUnsorted:"
  puts @states
  puts "\n"
  
  @states.sort!
  
  erb :states, layout: :main
end
