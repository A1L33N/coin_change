require('sinatra')
require('pry')
require('sinatra/reloader')
require('./lib/coin_change')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/change') do
  @change = params.fetch("change").to_f().coin_change()
  erb(:change)
end
