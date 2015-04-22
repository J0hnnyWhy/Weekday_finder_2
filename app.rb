require('sinatra')
require('sinatra/reloader')
require('./lib/weekday_finder')
also_reload('lib/**/*.rb')


get('/') do
  erb(:index)
end

get('/weekday') do
  @date = params.fetch('date').weekday_finder()
  erb(:weekday)
end
