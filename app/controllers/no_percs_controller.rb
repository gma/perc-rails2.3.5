require "paginate_alphabetically"

class NoPercsController < ApplicationController
  before_filter :require_active_user
  
  def index
    @composers = NoPerc.alphabetical_group(params[:letter]).group_by do |work|
      work.composer_name
    end
  end
end
