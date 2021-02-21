class ProjectsController < ApplicationController
  def main; end

  def index
    @projects = Project.all
    @certificates = Certificate.all.order(id: :desc)
  end
end
