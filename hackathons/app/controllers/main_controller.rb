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

end
