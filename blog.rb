require 'sinatra'
require './lib/post'

class MyApp < Sinatra::Base
  get "/" do
    erb :index
  end

  get "/posts" do
    @posts = Post.all
    erb :posts
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


end
