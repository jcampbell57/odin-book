class ApplicationController < ActionController::Base
  # devise authentication
  before_action :authenticate_user!
end
