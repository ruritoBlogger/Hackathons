class FormController < ApplicationController

  def index
    @forms = Form.all
  end

  def show
    @form = Form.find_by(id: params[:id])
  end

  def create
    @form = Form.find_by(id: params[:id])
    @post = Post.new(user_id: params[:id],  form_id: session[:user_id])
    @post.save
    redirect_to("/form/:id/info")
  end

  def info

  end

end
