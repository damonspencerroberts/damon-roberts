class AboutsController < ApplicationController
  def index
    @educations = Education.all
  end
end
