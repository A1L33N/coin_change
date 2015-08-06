require('sinatra')
require('sinatra/reloader')
require('./lib/coin_change')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/change') do
  @change = params.fetch("change").coin_change()
  erb(:change)
end
