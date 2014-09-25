require 'sinatra'

class MyApp < Sinatra::Base
  get "/" do
    erb :index
  end

#Named parameter
  get "/about_me" do
    erb :about_me
  end

  get "/contact" do
    erb :contact
  end

  # get "/:username" do
  #   User.find_by_username(params[:username])
  # end

  get "/posts/:post_name" do
    post = params[:post_name]
    erb "/posts/#{post}".to_sym
  end

  get "/posts" do
    
  end
end
