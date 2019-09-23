class WizardsController < ApplicationController

  def index
  end

  def show
  end

  def new

  end

  def create

  end

  def destroy
    @wizard = Wizard.find(params[:id])
    @wizard.favorite_spells.destroy_all
    @wizard.destroy
    redirect_to wizards_path
  end

end
