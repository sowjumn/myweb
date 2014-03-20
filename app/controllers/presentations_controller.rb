class PresentationsController < ApplicationController
  before_action :signed_in_admin, only: [:new,:create, :edit, :update, :destroy]
  
  def new
    @presentation = Presentation.new
  end

  def create
    @presentation = Presentation.new(presentation_params)
    if @presentation.save
      redirect_to presentations_url
    else
      render 'new'
    end
  end

  def edit
    @presentation = Presentation.find(params[:id])
  end

  def update
    @presentation = Presentation.find(params[:id])
    if @presentation.update_attributes(presentation_params)
      redirect_to presentations_url
    else
      render 'edit'
    end
  end

  def index
    @all_presentations = Presentation.all
  end

  def destroy
    @presentation = Presentation.find(params[:id])
    @presentation.destroy
    redirect_to presentations_url
  end

  private
    def presentation_params
      params.require(:presentation).permit(:title,:description,:embedlink)
    end
end