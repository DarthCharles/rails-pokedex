class PokemonsController < ApplicationController

  def index
    @pokemon = Pokemon.all
  end

  def new
    @pokemon = Pokemon.new
  end

  def create
    @pokemon = Pokemon.new(pokemon_params)
    
    if  @pokemon.save
      redirect_to @pokemon
    else
      render :new
    end
  end

  def show
    @pokemon = Pokemon.find(params[:id])
  end

  def edit
    @pokemon = Pokemon.find(params[:id])
  end

  def update
    @pokemon = Pokemon.find(params[:id])

    if @pokemon.update(pokemon_params)
      redirect_to @pokemon
    else
      render :edit
    end
  end

  def destroy
    @pokemon = Pokemon.find(params[:id])
    @pokemon.destroy
    redirect_to pokemons_path
  end


private
  def pokemon_params
    params.require(:pokemon).permit(
    :nat,
    :name,
    :hp,
    :atk,
    :def,
    :spA,
    :spD,
    :typeI,
    :typeII,
    :abilityI,
    :abilityII,
    :hiddenAbility,
    :mass,
    :color,
    :image_url)
  end
end
