require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/parcel.rb')

get('/form') do
  erb(:form)
end

get('/shipping') do
  length = params.fetch('length')
  width = params.fetch('width')
  height = params.fetch('height')
  weight = params.fetch('weight')

  @user_input = Parcel.new(length.to_i, width.to_i, height.to_i, weight.to_i)
  @result = @user_input.cost_to_ship()
  erb(:shipping)
end
