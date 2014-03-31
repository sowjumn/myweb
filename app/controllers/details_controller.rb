class DetailsController < ApplicationController
  def create

  end

  private
    def detail_params
      params.require(:detail).permit(:bullet)
    end
end