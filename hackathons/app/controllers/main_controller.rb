class MainController < ApplicationController

  def top
  end

  def index
    @houses = Ie.all
  end

  def show
    @user = User.find_by(id: session[:user_id])
    @house = Ie.find_by(user_id: session[:user_id])
    if @house
    else
      flash[:notice] = "please make your data"
      @house = Ie.new(user_id: session[:user_id])
      @house.area = 2
      @house.save
      redirect_to("/main/#{session[:user_id]}/edit")
    end
  end

  def edit
    @user = User.find_by(id: session[:user_id])
    @house = Ie.find_by(user_id: session[:user_id])
  end


  def update
    @user = User.find_by(id: session[:user_id])
    @house = Ie.find_by(user_id: session[:user_id])
    @house.user_id = session[:user_id]
    @house.house_name = params[:house_name]
    @house.detail = params[:detail]
    @house.canVisit = params[:canVisit]
    @house.caution = params[:caution]

    if params[:image_name]
      @house.image_name = "#{@house.id}.jpg"
      image = params[:image_name]
      File.binwrite("public/house_images/#{@house.image_name}",image.read)
    end

    if @house.save
      flash[:notice] = "edit sucsess!"
      redirect_to("/main/#{session[:user_id]}/select")
    else
    end
  end

  def update2
    @user = User.find_by(id: session[:user_id])
    @user.name = params[:name]
    @user.password = params[:password]
    @name = params[:name]

    if params[:image]
      @user.image_name = "#{@user.id}.jpg"
      image = params[:image]
      File.binwrite("public/user_images/#{@user.image_name}",image.read)
    end
    if @user.save
      flash[:notice] = "sucsess"
      redirect_to("/main/#{session[:user_id]}")
    else
      flash[:notice] = "failed"
      render("main/edit2")
    end
  end

  def select
  end

  def addTokyo
    @user = User.find_by(id: session[:user_id])
    @house = Ie.find_by(user_id: session[:user_id])
      if @house.area == 1
        redirect_to("/main/#{session[:user_id]}")
      else
        @house.area = 1
        @house.save
        flash[:notice] = "area selected!"
        redirect_to("/main/#{session[:user_id]}")
      end
  end

  def addMinakusa
    @user = User.find_by(id: session[:user_id])
    @house = Ie.find_by(user_id: session[:user_id])
      if @house.area == 2
        redirect_to("/main/#{session[:user_id]}")
      else
        @house.area = 2
        @house.save
        flash[:notice] = "area selected!"
        redirect_to("/main/#{session[:user_id]}")
      end
  end

end
