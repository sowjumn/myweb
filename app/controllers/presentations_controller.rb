class PresentationsController < ApplicationController
  before_action :signed_in_admin, only: [:new,:create]
  
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



  def index
    @all_presentations = Presentation.all
  end

  private
    def presentation_params
      params.require(:presentation).permit(:title,:description,:embedlink)
    end
end