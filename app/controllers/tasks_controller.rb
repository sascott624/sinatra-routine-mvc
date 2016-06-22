class TasksController < ApplicationController

  get '/tasks/new' do
    if session[:user_id]
      erb :'/tasks/new'
    else
      redirect to '/'
    end
  end
end
