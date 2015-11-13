class UsersController < ApplicationController

  def index
    @pins = User.pins.find(params[:id])
  end

  def show

  end

end
