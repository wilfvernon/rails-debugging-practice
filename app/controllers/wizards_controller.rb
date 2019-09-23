class WizardsController < ApplicationController
  before_action :set_wizard, only: [:show]

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

  private

  def set_wizard
    @wizard = Wizard.find(params[:id])
  end

end
