class MainController < ApplicationController

  def top
  end

  def index
    @houses = House.all
  end

  def show
    @user = User.find_by(id: session[:user_id])
    @house = House.find_by(user_id: session[:user_id])
  end


  def update
    @user = User.find_by(id: session[:user_id])
    @house = House.find_by(user_id: session[:user_id])
    if @house
      @house.house_name = params[:house_name]
      @house.detail = params[:detail]
      @house.canVisit = params[:canVisit]
      @house.caution = params[:caution]
      @house.save
      flash[:notice] = "edit sucsess!"
      redirect_to("/main/#{session[:user_id]}")
    else
      @house = House.new(user_name: @user.name,
                         house_name: params[:house_name],
                         detail: params[:detail],
                         canVisit: params[:canVisit],
                         caution: params[:caution],
                         user_id: @user.id)
      @house.save
      flash[:notice] = "edit sucsess"
      redirect_to("/main/#{session[:user_id]}")
    end
  end

end
