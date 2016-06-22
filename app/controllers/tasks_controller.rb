class TasksController < ApplicationController

  get '/tasks/index' do
    if session[:user_id]
      erb :'/tasks/index'
    else
      redirect to '/'
    end
  end

  get '/tasks/new' do
    if session[:user_id]
      erb :'/tasks/new'
    else
      redirect to '/'
    end
  end

  post '/tasks/new' do
    if session[:user_id]
      if !params[:task][:name].empty?
        @task = Task.create(params[:task])
        @task.save
        redirect to '/tasks/index'
      end
      redirect to '/tasks/index'
    end
    redirect to '/'
  end
end
