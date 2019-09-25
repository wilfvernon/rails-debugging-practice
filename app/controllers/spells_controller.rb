class SpellsController < ApplicationController

    def index
        @spells = Spell.all
    end

    def show
        @spell = Spell.find(params[:id])
    end

    def new
        @spell = Spell.new
    end

    def create
        spell = Spell.new(spell_params)
        spell.save
        redirect_to spell_path(spell) 
    end

    private
    
        def spell_params
            params.require(:spell).permit(:name, :description)
        end

end
