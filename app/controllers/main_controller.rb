class MainController < ApplicationController
  def index
    flash.now[:notice] = "fsldjflsdkj"
    flash.now[:alert] = "fsldjflsdkjsdfdsf"
  end
end