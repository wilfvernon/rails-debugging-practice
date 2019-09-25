class WizardsController < ApplicationController

  def index
    @wizards = Wizard.all
  end

  def show
    @wizard = Wizard.find(params[:id])
  end

  def new
    @wizard = Wizard.new
  end
  
  def create
    wizard = Wizard.new(wizard_params)
    ##space for validation##
    wizard.save
    redirect_to wizards_path(wizard)
  end
  
  def edit
    @wizard = Wizard.find(params[:id])
  end

  def update
    wizard = Wizard.find(params[:id])
    wizard.update(wizard_params)
    redirect_to wizard_path(wizard)
  end
  
  def destroy
    @wizard = Wizard.find(params[:id])
    @wizard.favorite_spells.destroy_all
    @wizard.destroy
    redirect_to wizards_path
  end

  def favorite_spell
    @wizard = Wizard.find(params[:id])
  end

  private
    def wizard_params
      params.require(:wizard).permit(:name, :house, :age, :image)
    end
end
