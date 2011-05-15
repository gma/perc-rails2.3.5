class SearchesController < ApplicationController
  def index
    @searches = current_user.recent_searches
  end
end
