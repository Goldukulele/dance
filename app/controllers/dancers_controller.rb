class DancersController < ApplicationController
  def index
    @dancers = Dancer.all
  end

  def new
    @dancer = Dancer.new
  end

  def create
    Dancer.create(dancer_params)
    redirect_to root_path
  end

  private

  def dancer_params
    params.require(:dancer).permit(:name, :bio, :style)
  end
end
