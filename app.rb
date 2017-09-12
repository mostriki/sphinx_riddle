require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/sphinx')
require('pry')

new_riddle = Riddle.new

get('/') do
  @show_riddle = new_riddle.sphinx_picker
  erb(:input)
end

post('/output') do
  if new_riddle.sphinx?(params.fetch("answer"))
    @answer = "You got it!"
  else
    @answer = "Try again!"
  end
  binding.pry
  erb(:output)
end
