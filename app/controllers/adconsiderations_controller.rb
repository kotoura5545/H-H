class AdconsiderationsController < ApplicationController

  def index
  end

  def show
    @article = Consideration.find(params[:id])
  end

  def new
    @article = Consideration.new
  end

  def create
    @article = Consideration.new(consideration_params)
    @article.save
    redirect_to adconsideration_path(@article)
  end

  def edit
    
  end

  def update
    
  end

  def delete
    
  end

  def consideration_params
    params.require(:consideration).permit(:title, :detail)
  end

  def upload_image
    p 'test'
    p params
    render FroalaEditorSDK::Image.upload(params, "public/uploads/images/")
  end

end
