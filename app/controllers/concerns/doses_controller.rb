class DosesController < ApplicationController
   def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose  = Dose.new
  end

  def create
    # On récupère le cocktail auquel va être associée la dose
    @cocktail = Cocktail.find(params[:cocktail_id])

    # On instancie un objet dose
    @dose  = Dose.new(dose_params)

    # Associer la dose à son cocktail
    @dose.cocktail = @cocktail

    # save
    if @dose.save
      # si ça marche -> redirige sur la show du cocktail
      redirect_to cocktail_path(@cocktail)
    else
      # sinon -> render le form de création de la dosee
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])

    # On se met de côté le garden pour pouvoir
    # redirect le user vers lui après la destruction de la dose
    garden = @dose.garden

    @dose.destroy

    redirect_to garden_path(garden)
  end

  private
  def dose_params
    params.require(:dose).permit(:description, :ingredient)
  end
end
