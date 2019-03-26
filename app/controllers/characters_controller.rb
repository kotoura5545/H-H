class CharactersController < ApplicationController
  def index
  end

  def show
  	@character= Character.find(params[:id])
  end

  def search
  	set_search
  end
end
