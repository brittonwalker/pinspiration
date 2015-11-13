class PinsController < ApplicationController

  def index
    @pins = Pin.all
  end

  def show
    @pin = Pin.find(params[:id])
  end

  def allpins
    @pins = Pin.all
  end

  def new
    @pin = Pin.new
  end

  def create
    @pin = Pin.create!(pin_params)
    redirect_to pins_path
  end

  def edit
    @pin = Pin.find(params[:id])
    redirect_to pins_path
  end



  private

  def pin_params
    params.require(:pin).permit(:title, :img_url)
  end

end
