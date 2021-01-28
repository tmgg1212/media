class MediaController < ApplicationController

  def index
  end

  def new
    @medium = Medium.new
  end

  def create
    @medium = Medium.new(medium_params)
    if @midium.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def medium_params
    params.require(:medium).permit(:title, :text, :category_id)
  end
  
end
