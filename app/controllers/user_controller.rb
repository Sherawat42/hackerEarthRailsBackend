class UserController < ApplicationController
  def create
    @user = User.find_by_guest_id(params[:guest_id]) || User.create(:guest_id  => params[:guest_id])
    render :create
  end
end
