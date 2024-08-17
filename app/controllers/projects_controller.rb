class ProjectsController < ApplicationController

  def create
    project = Project.new(params[:project].permit!)
    project.save
    redirect_to root_path
  end

  def update
    project = Project.find(params[:id])
    project.update(params[:project].permit!)
    redirect_to root_path
  end

end