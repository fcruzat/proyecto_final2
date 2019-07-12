class UsersController < ApplicationController
  def profile
    @user = current_user
  end

  def configuration
  end
end
