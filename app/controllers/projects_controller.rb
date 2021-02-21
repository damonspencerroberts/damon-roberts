class ProjectsController < ApplicationController
  def main; end

  def index
    @project = Project.all
    @certificates = Certificate.all
  end
end
