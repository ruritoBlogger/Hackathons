class FormController < ApplicationController

  def index
    @forms = Form.all
  end

  def show
    @form = Form.find_by(id: params[:id])
  end

end
