class QuantitiesController < ApplicationController
  before_action :set_quantity, only: [:show, :edit, :update, :destroy]
  before_action :load_ingredients, only: [:edit, :new]
  def index
    @quantities = Quantity.all
  end

  def show
  end

  def new
    @quantity = Quantity.new
  end

  def create
    @quantity = Quantity.new(quantity_params)
    @quantity.save
    redirect_to quantity_path(@quantity)
  end

  def edit
  end

  def update
    @quantity.update(quantity_params)
    redirect_to quantity_path(@quantity)
  end

  def destroy
    @quantity.destroy
    redirect_to quantities_path
  end

  private

  def quantity_params
    params.require(:quantity).permit(:name)
  end

  def set_quantity
    @quantity = Quantity.find(params[:id])
  end

  def load_ingredients
    @ingredients = Ingredient.all
  end
end
