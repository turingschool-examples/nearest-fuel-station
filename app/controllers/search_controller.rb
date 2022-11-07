class SearchController < ApplicationController 
  def index
    
    test = MapQuestFacade.directions(params[:location])
  end
end