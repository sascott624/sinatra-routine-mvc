class RoutinesController < ApplicationController

  get '/routines/index' do
    if session[:user_id]
      @user = User.find_by_id(session[:user_id])
      erb :'/routines/index'
    else
      redirect to '/'
    end
  end

  get '/routines/new' do
    if session[:user_id]
      @user = User.find_by_id(session[:user_id])
      erb :'/routines/new'
    else
      redirect to '/'
    end
  end

  post '/routines/new' do
    if params[:routine][:name] != ""
      @user = User.find_by_id(session[:user_id])
      @routine = Routine.create(params[:routine])
      @routine.user_id = @user.id
      if !params[:task][:name].empty?
        @routine.tasks << Task.create(params[:task])
      end
      @routine.save
      redirect to "/routines/#{@routine.id}"
    else
      redirect to '/routines/new'
    end
  end

  get '/routines/:id' do
    if session[:user_id]
      @user = User.find_by_id(session[:user_id])
      @routine = Routine.find_by_id(params[:id])
      erb :'routines/show'
    else
      redirect to '/'
    end
  end

  get '/routines/:id/edit' do
    @routine = Routine.find_by_id(params[:id])
    if session[:user_id]
      @user = User.find_by_id(@routine.id)
      if @user.id == session[:user_id]
        erb :'/routines/edit'
      else
        redirect to '/routines/index'
      end
    else
      redirect to '/'
    end
  end

  patch '/routines/:id/edit' do
    @routine = Routine.find_by_id(params[:id])
    if params[:routine][:name] != ""
      @routine.update(params[:routine])
      if !params[:task][:name].empty?
        @routine.tasks << Task.create(params[:task])
      end
      @routine.save
      redirect to "/routines/#{@routine.id}"
    end
    redirect to "/routines/#{@routine.id}/edit"
  end

  get '/routines/:id/delete' do
    @routine = Routine.find_by_id(params[:id])
    if session[:user_id]
      @user = User.find_by_id(@routine.id)
      if @user.id == session[:user_id]
        @routine.delete
        redirect to '/routines/index'
      else
        redirect to '/routines/index'
      end
    else
      redirect to '/'
    end
  end


end
