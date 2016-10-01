module Api
  module V1
    class BaseController < ActionController::Base
      before_action :doorkeeper_authorize!
    end
  end
end