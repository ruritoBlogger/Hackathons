class FormController < ApplicationController

  def index
    @forms = Form.all
  end

  def show

  end

end
