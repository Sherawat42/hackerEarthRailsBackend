class ComplaintController < ApplicationController
  def index
    @complaints = Complaint.all
  end
  def create
    @user = User.find_by_id(params[:user_id])
    if(@user == nil)
      return {"error" => "no_user_passed"}
    end
    if @user.complaints.create(:ministry_id => params[:ministry_id],:img_url=> params[:img_url] ,
                               :audio_text=> params[:audio_text], :video_url => params[:video_url],
                               :location => params[:location],:description => params[:description])
      render :create
    end
  end

  def status
    @user = User.find_by_id(params[:user_id])
    @complaint = @user.complaints.find_by_id(params[:complaint_id])
    render :status
  end

  def complaints
    @user = User.find_by_id(params[:user_id])
    @user_complaints = @user.complaints
    render :complaints
  end

end
