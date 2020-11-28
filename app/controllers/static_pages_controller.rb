class StaticPagesController < ApplicationController
  def home
  end
  def instructs
    @enrolls = Enroll.where(user_id: current_user.id)
    @courses = Course.where(user_id: current_user.id)
  end
end
