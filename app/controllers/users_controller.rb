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

  get '/users/login' do
    erb :'/users/login'
  end

  get '/users/logout' do
    if !session[:user_id].nil?
      session.destroy
      redirect to '/users/login'
    else
      redirect to '/'
    end
  end

end
