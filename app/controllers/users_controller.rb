class UsersController < ApplicationController
  def profile
    @user = current_user
    @services = @user.services
  end

  def configuration
  end
end
