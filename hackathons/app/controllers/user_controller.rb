class UserController < ApplicationController

  def new
    @user = User.new(name: params[:name],
                     password: params[:password],
                     image_name: "default.jpg")
    if @user.save
      flash[:notice] = "sucsess"
      session[:user_id] = @user.id
      redirect_to("/main/top")
    else
      flash[:notice] = "failed"
      redirect_to("/home/new")
    end
  end

  def login
    @user = User.find_by(name: params[:name],
                         password: params[:password])
    if @user
      flash[:notice] = "sucsess"
      session[:user_id] = @user.id
      redirect_to("/main/top")
    else
      flash[:notice] = "failed"
      redirect_to("/home/login")
    end
  end

  def logout
    session[:user_id] = nil
    flash[:notice] = "logouted"
    redirect_to("/home/top")
  end

  def remove
    @user = User.find_by(id: session[:user_id])
    @user.destroy
    redirect_to("/home/top")
  end
end
