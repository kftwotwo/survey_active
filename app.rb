require('bundler/setup')
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  @surveys = Survey.all
  erb(:index)
end

get('/questions') do
  @questions = Question.all
  erb(:questions)
end

get('/surveys') do
  @surveys = Survey.all
end
