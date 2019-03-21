class AdcharactersController < ApplicationController
  def index
  end

  def show
    @character= Character.find(params[:id])
  end

  def new
    @character = Character.new
  end

  def edit
    @character = Character.find(params[:id])
  end

  def create
    @character = Character.new(character_params)
    @character.save
    redirect_to adcharacter_path(@character.id)
  end

  def update
    @character = Character.find(params[:id])
    @character.update(character_params)
    redirect_to adcharacter_path(@character.id)
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy
    redirect_to adcharacters_path
  end

  def character_params
    params.require(:character).permit(:name, :group_list, :nenn_name, :menu, :detail, :chapter, :character_image)
end
end
