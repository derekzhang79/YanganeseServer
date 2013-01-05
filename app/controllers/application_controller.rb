class ApplicationController < ActionController::Base
  protect_from_forgery

  def index
    redirect_to 'http://mikkyang.com/project/yanganese'
  end
end
