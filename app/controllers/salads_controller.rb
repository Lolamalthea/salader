class SaladsController < ApplicationController
  before_action :set_salad, only: [:show, :edit, :update, :destroy]
  def index
    @salads = Salad.all
  end

  def show
    @quantity = Quantity.new
  end

  def new
    @salad = Salad.new
  end

  def create
    @salad = Salad.new(salad_params)
    @salad.save
    redirect_to salad_path(@salad)
  end

  def edit
  end

  def update
    @salad.update(salad_params)
    redirect_to salad_path(@salad)
  end

  def destroy
    @salad.destroy
    redirect_to salads_path
  end

  private

  def salad_params
    params.require(:salad).permit(:name)
  end

  def set_salad
    @salad = Salad.find(params[:id])
  end
end
