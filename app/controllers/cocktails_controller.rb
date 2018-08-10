class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :edit, :update, :destroy]

  def index
    # As a user, I can see all cocktails
    @cocktails = Cocktail.all
  end

  # As a user I can see the details of a resto
  def show
  end

  #####
  # As a user I can create a resto
  def new
    @cocktail = Cocktail.new
  end

  def create
    # TODO:
    # 1. Instancier un resto object à partir de params[:cocktail]
    cocktail = Cocktail.new(cocktail_params)

    # 2. Save
    cocktail.save
    redirect_to cocktails_path(cocktail)
  end
  #####

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    # strong_params: whitelist params coming from potentially malicious user
    params.require(:cocktail).permit(:name, :image, :photo)
  end
end
