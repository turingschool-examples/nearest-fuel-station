class SearchController < ApplicationController
  def index
    require 'pry' ; binding.pry
    @location = params[:location]
  end
end