class UsersController < ApplicationController
  skip_before_action :authenticate_user!
  def show

  end

  def update_sign_in_count
    user = User.find(params[:id])
    user.update(sign_in_count: 2)
  end
end
