class UsersController < ApplicationController

  def index
    # @pins = @user.pins
  end

  def show

  end

  private
  def set_user
    @user = User.find(params[:id])
  end

end
