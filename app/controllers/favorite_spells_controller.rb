class FavoriteSpellsController < ApplicationController
    def new
        @wizard = Wizard.find(params[:id])
        @favorite_spell = FavoriteSpell.new
        @spells = Spell.all.reject{|spell| @wizard.spells.include?(spell)}
    end

    def create
        favorite_spell = FavoriteSpell.new(favorite_spell_params)
        favorite_spell.save
        redirect_to "/wizards/#{favorite_spell.wizard_id}"
    end

    private
        def favorite_spell_params
            params.require(:favorite_spell).permit(:wizard_id, :spell_id)
        end

end
