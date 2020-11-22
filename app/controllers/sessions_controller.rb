class SessionsController < ApplicationController
  def new
    render 'new'
  end

  def create
    user = User.find_by(id: params[:session][:id])
    if user
      log_in user
      redirect_to '/courses'
    else
      flash.now[:danger] = 'Invalid user'
      render 'new'
    end
  end
  def destroy
    log_out
    redirect_to root_url
  end
end


