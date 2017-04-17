require('sinatra')
require('sinatra/reloader')

get('/') do
  erb(:home)
end

get('/books') do
  erb(:books)
end

get('/graphic') do
  erb(:graphic)
end

get('/bio') do
  erb(:bio)
end

get('/current') do
  @event_one = "29 May 2017	Hay-on-Wye, Wales"
  @event_two = "06 Jul 2017	Austin, TX"
  @event_three = "07 Jul 2017	Dallas, TX"
  @current_project = "Neil recently released 'Norse Mythology', and is currently on tour for the upcoming premier of the 'American Gods' TV series."
  erb(:current)
end

get('/receipt') do
  @full_name = params.fetch('full_name')
  @email = params.fetch('email')
  erb(:receipt)
end
