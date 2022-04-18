class SearchController < ApplicationController
  def index
    @location = params[:location]
  end

end
