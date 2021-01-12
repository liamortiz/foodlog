class PokemonsController < ApplicationController
    def index
        @pokemons = Pokemon.all
    end

    def edit
        @pokemon = Pokemon.find(params[:id])
        @trainers = Trainer.all
    end

    def update
        @pokemon = Pokemon.find(params[:id])
        @pokemon.update(pokemon_params)                                                                                   
        redirect_to root_path
    end
    
    def new
        @pokemon = Pokemon.new
        @trainers = Trainer.all
    end

    def create
        @pokemon = Pokemon.create(pokemon_params)
        if @pokemon.save
            redirect_to root_path
        else
            flash[:notice] = @pokemon.errors.full_messages
            redirect_to new_pokemon_path
        end
    end

    def destroy
        @pokemon = Pokemon.find(params[:id])
        @pokemon.destroy
        redirect_to root_path
    end

    private

    def pokemon_params
        params.require(:pokemon).permit(:name, :pokemon_id, :image, :type1, :type2, :trainer_id)
    end
end
