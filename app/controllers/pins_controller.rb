class PinsController < ApplicationController
  before_action :set_pin, only: [:show, :edit, :create, :update, :destroy]
  before_action :set_user, only: [:index]

  def index
    @pins = @user.pins.find(@user.id)
  end

  def allpins
    @pins = Pin.all
  end

  def create
    @pin = Pin.create!(pin_params)
    redirect_to pins_path
  end



  private
  def set_pin
    @pin = Pin.find(params[:id])
  end

  def set_user
    @user = User.find(params[:id])
  end

  def pin_params
    params.require(:pin).permit(:title, :img_url)
  end

end
