class PostController < ApplicationController
  def new
  end

  def show
    @form = Form.find_by(id: params[:id])
  end

  def apply2
    @form = Form.find_by(id: params[:id])
  end

  def makedummy

  end

  def makeTokyo
    @form = Form.find_by(id: params[:id])
    @form.area = 1
    @form.save
    redirect_to("/form/index")
  end

  def makeMinakusa
    @form = Form.find_by(id: params[:id])
    @form.area = 2
    @form.save
    redirect_to("/form/index")
  end


end
