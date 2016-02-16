class PinsController < ApplicationController
  before_action :set_pin, only: [:show, :edit, :update, :destroy]

  def index
    @pins = Pin.all
  end

  def show
  end

  def new
    @pin = Pin.new
  end

  def create
    @pin = Pin.new(pin_params)
    if @pin.save
      redirect_to @pin, notice: "Pin was created successfully!"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @pin.update(pin_params)
      redirect_to @pin, notice: "Pin was updated successfully!"
    else
      render :edit
    end
  end

  def destroy
    @pin.destroy
    redirect_to pins_url, notice: "Pin was destroyed!"
  end

  private

  def set_pin
    @pin = Pin.find(params[:id])
  end

  def pin_parmas
    params.require(:pin).permit(:title, :description, :pin_number, :image, :limted_edition, :original_price)
  end
end
