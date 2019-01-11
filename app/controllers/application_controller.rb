class ApplicationController < ActionController::Base
  include Clearance::Controller
  def home
    if current_user
        redirect_to '/students'
    end
  end
end
