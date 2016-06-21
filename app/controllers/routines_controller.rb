class RoutinesController < ApplicationController

  get '/routines/index' do
    if session[:user_id]
      @user = User.find_by_id(session[:user_id])
      erb :'/routines/index'
    else
      redirect to '/'
    end
  end

end
