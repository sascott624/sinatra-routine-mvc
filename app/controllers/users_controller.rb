class UserController < ApplicationController

  get '/users/signup' do
    erb :'/users/signup'
  end

  post '/signup' do
    if params[:user][:username] != "" && params[:user][:email] != ""
      @user = User.new(params[:user])
      @user.save
      session[:user_id] = @user.id
      redirect to '/'
    else
      redirect to '/users/signup'
    end
  end

end
