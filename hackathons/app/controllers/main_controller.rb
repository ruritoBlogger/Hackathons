class MainController < ApplicationController

  def top
  end

  def index
    @houses = House.all
  end

  def show
    @user = User.find_by(id: session[:user_id])
  end

end
