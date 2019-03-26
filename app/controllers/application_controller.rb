class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception

	before_action :set_search

	def set_search
  @search = Character.ransack(params[:q]) #ransackメソッド推奨
  @search_articles = @search.result

end
end
