class ApplicationController < ActionController::Base
  before_action :authenticate_admin_admin! #
end
