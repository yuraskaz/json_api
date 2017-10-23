class ApplicationController < ActionController::API
	self.responder = ApplicationResponder
  respond_to :json

 
  protect_from_forgery with: :exception
end
