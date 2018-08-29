class UserController < ApplicationController

  def new
    @user = User.new(name: params[:name],
                     password: params[:password],
                     image_name: "default.jpg")

    @twitter = params[:twitter]

    if @twitter
      system("python3 ../../public/profile_fecth.py #{@twitter}")
      flash[:notice] = "OK"
    end

    if @user.save
      session[:user_id] = @user.id
      redirect_to("/main/top")
    else
      flash[:notice_fl] = "failed"
      redirect_to("/home/new")
    end
  end

  def login
    @user = User.find_by(name: params[:name],
                         password: params[:password])
    if @user
      flash[:notice] = "success"
      session[:user_id] = @user.id
      redirect_to("/main/top")
    else
      flash[:notice_fl] = "failed"
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
    flash[:notice_fl] = "removed"
    redirect_to("/home/top")
  end
end
