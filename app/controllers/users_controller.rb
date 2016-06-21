class UserController < ApplicationController

  get '/users/signup' do
    if !session[:user_id]
      erb :'/users/signup'
    else
      redirect to '/routines/index'
    end
  end

  post '/signup' do
    if params[:user][:username] != "" && params[:user][:email] != ""
      @user = User.new(params[:user])
      @user.save
      session[:user_id] = @user.id
      redirect to '/routines/index'
    else
      redirect to '/users/signup'
    end
  end

  get '/users/login' do
    if !session[:user_id]
      erb :'/users/login'
    else
      redirect to '/routines/index'
    end
  end

  post '/users/login' do
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect to '/routines/index'
    else
      redirect to '/users/signup'
    end
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
