class FavoriteSpellsController < ApplicationController

  def new
    @wizard = Wizard.find(params[:wizard_id])
    @favorite_spell = FavoriteSpell.new
  end

  def create
    new_spell = FavoriteSpell.new(favorite_spell_params)
    if new_spell.valid?
      new_spell.save
      redirect_to wizard_path(new_spell.wizard_id)
    else
      render :new
    end
  end

  def destroy
    byebug
    @favorite_spell = FavoriteSpell.find(params[:id])
  end

  private

  def favorite_spell_params
    params.require(:favorite_spell).permit(:wizard_id, :spell_id)
  end

end
