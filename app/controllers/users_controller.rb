class UserController < ApplicationController

  get '/users/signup' do
    erb :'/users/signup'
  end

  post '/signup' do
    @user = User.new(params[:user])
    @user.save
    redirect to '/index'
  end

end
