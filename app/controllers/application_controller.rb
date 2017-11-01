require 'application_responder'

class ApplicationController < ActionController::API

  self.responder = ApplicationResponder
  respond_to :json
  def current_user
    @current_user ||= User.find_by(params[:login])
  end
end
