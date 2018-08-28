class FormController < ApplicationController

  def index
    @forms = Form.all
  end



  def create
    @form = Form.find_by(id: params[:id])
    @post = Post.new(user_id: session[:user_id],  form_id: @form.id)
    @post.save
    redirect_to("/form/info")
  end

  def info
    @posts = Post.where(user_id: session[:user_id])
  end

  def apply

  end

  def add
    @form = Form.new(user_id: session[:user_id],
                     area: 1,
                     month: params[:month],
                     startDay: params[:startDay],
                     longDay: params[:longDay])
    @form.save
    redirect_to("/post/#{@form.id}/apply2")
  end

  def delete
    @post = Post.find_by(id: params[:id])
    @post.destroy
    redirect_to("/form/info")
  end


end
