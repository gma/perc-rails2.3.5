class ApplicationController < ActionController::Base
  before_filter :set_locale
  helper :all # include all helpers, all the time
  protect_from_forgery # :secret => '8fc080370e56e929a2d5afca5540a0f7'
  # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
  include SessionsHelper
  
  protected
    def set_locale
      # if params[:locale] is nil then I18n.default_locale will be used
      I18n.locale = params[:locale]
    end
end
