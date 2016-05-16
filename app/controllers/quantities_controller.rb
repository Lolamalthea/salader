class QuantitiesController < ApplicationController
  before_action :set_quantity, only: [:show, :edit, :update, :destroy]
  before_action :load_ingredients, only: [:edit, :new]
  before_action :load_salad, only: [:edit, :new, :create, :destroy]
  def index
    @quantities = Quantity.all
  end

  def show
  end

  def new
    @quantity = Quantity.new
    @quantity.salad_id = @salad.id
  end

  def create
    @quantity = Quantity.new(quantity_params)
    @quantity.save
    redirect_to salad_path(@salad)
  end

  def edit
  end

  def update
    @quantity.update(quantity_params)
    redirect_to salad_path(@salad)
  end

  def destroy
    @quantity.destroy
    redirect_to salad_path(@salad)
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

  def load_salad
    @salad = Salad.find(params[:salad_id])
  end
end
