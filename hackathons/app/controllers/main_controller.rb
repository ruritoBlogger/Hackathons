class MainController < ApplicationController

  def top
  end

  def index
    @houses = House.all
  end

  def show
    @user = User.find_by(id: session[:user_id])
    @house = House.find_by(user_id: session[:user_id])
    if @house
    else
      flash[:notice] = "please make your data"
      @house = House.new(user_id: session[:user_id])
      @house.area = 2
      @house.save
      redirect_to("/main/#{session[:user_id]}/edit")
    end
  end

  def edit
    @user = User.find_by(id: session[:user_id])
    @house = House.find_by(user_id: session[:user_id])
  end


  def update
    @user = User.find_by(id: session[:user_id])
    @house = House.find_by(user_id: session[:user_id])
    @house.user_id = session[:user_id]
    @house.house_name = params[:house_name]
    @house.detail = params[:detail]
    @house.canVisit = params[:canVisit]
    @house.caution = params[:caution]

    if @house.save
      flash[:notice] = "edit sucsess!"
      redirect_to("/main/#{session[:user_id]}/select")
    else
      flash[:notice] = "failed"
      render('main/update')
    end
  end

  def select
  end

  def addTokyo
    @user = User.find_by(id: session[:user_id])
    @house = House.find_by(user_id: session[:id])
      if @house.area == 1
        redirect_to("main/#{session[:user_id]}")
      else
        @house.area = 1
        @house.save
        flash[:notice] = "area selected!"
        redirect_to("/main/#{session[:user_id]}")
      end
  end

  def addMinakusa
    @user = User.find_by(id: session[:user_id])
    @house = House.find_by(user_id: session[:user_id])
      if @house.area == 2
        redirect_to("/main/#{session[:user_id]}")
      else
        @house.save
        flash[:notice] = "area selected!"
        redirect_to("/main/#{session[:user_id]}")
      end
  end

end
