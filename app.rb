require_relative 'config/environment'

class App < Sinatra::Base

get '/' do
  erb :index
end

post '/' do

  text_from_user = params[:user_text]

  @pigged_text = PigLatinizer.new(text_from_user)

  erb :results
end


end
