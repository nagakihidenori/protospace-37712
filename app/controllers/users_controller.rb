class UsersController < ApplicationController

  def show
    user = User.find(params[:id])
    @user = user
    @prototypes = user.prototypes.includes(:user)
  end

end
