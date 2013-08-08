class ProjectsController < ApplicationController
  respond_to :json #response type is set at the controller level, so all of the actions are going to be in json format
  def index
    respond_with Project.all
  end

  def show
    respond_with Project.find(params[:id])
  end

  def create
    respond_with Project.create(params[:project])
  end

  def update
    respond_with Project.update(params[:id], params[:project])
  end

  def destroy
    respond_with Project.destroy(params[:id])

  end
end
