require_relative 'config/environment'

class App < Sinatra::Base

    get "/" do
        erb :user_input
    end

    post "/piglatinize" do
        @original_text = PigLatinizer.new
        @pig_text = @original_text.piglatinize(params[:user_phrase])

        erb :results
    end
end