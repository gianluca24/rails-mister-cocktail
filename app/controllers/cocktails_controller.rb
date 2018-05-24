class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :edit, :update, :destroy]
  def index
    @cocktails = Cocktail.all
  end

  def show
  end

  def new
    @cocktail = Cocktail.New
  end

  def create
    @cocktail = Cocktails.New(cocktail_params)
    @cocktail.save
    redirect_to cocktail_path(@cocktail)
  end

  def update
    @cocktail.update(params[:cocktail])
    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @cocktail.destroy
    redirect_to cocktail_path
  end

  private

  def set_restaurant
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
