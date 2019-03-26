class ConsiderationsController < ApplicationController
  def index
  	@articles = Consideration.all
  end

  def show
  	@article = Consideration.find(params[:id])
  end
end
