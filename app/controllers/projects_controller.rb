class ProjectsController < ApplicationController
  def new
    @project = Project.new
    5.times { @project.details.build }
  end

  def create
    @project = Project.new(project_params)
    @project.save
    redirect_to root_url
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end

  def index
  end

  private 
    def project_params
      params.require(:project).permit(:title,:description,details_attributes: [:bullet])
    end
end