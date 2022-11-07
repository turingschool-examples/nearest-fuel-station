class SearchController < ApplicationController 
  def index
    test = MapQuestFacade.directions
  end
end