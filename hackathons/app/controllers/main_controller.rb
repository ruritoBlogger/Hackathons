class MainController < ApplicationController

  def top
  end

  def index
    @houses = House.all
  end

end
