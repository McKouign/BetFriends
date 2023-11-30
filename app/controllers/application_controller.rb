class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  @squad = current_user.squad
end
