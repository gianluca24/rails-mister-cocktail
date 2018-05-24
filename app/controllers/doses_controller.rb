class DosesController < ApplicationController
  before_action :set_cocktail, only: [:show, :edit, :update, :destroy]

def index
    @doses = Cocktail.all
  end

  def show
  end

  def new
    @dose = Cocktail.New
  end

  def create
    @dose = Cocktails.New(dose_params)
    @dose.save
    redirect_to dose_path(@dose)
  end

  def update
    @dose.update(params[:dose])
    redirect_to dose_path(@dose)
  end

  def destroy
    @dose.destroy
    redirect_to dose_path
  end




  private

  def set_restaurant
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
