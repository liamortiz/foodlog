class PokemonsController < ApplicationController
    def index
        @pokemons = Pokemon.all
    end

    def edit
        @pokemon = Pokemon.find(params[:id])
    end

    def update
        @pokemon = Pokemon.find(params[:id])
        @pokemon.update(pokemon_params)
        redirect_to pokemons_path
    end
    
    def new
        @pokemon = Pokemon.new
    end

    def create
        Pokemon.create(pokemon_params)
        redirect_to pokemons_path
    end

    def destroy
        @pokemon = Pokemon.find(params[:id])
        @pokemon.destroy
        redirect_to pokemons_path
    end

    private

    def pokemon_params
        params.require(:pokemon).permit(:name, :pokemon_id, :image, :type1, :type2)
    end
end
