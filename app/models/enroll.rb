class Enroll < ApplicationRecord
  belongs_to :user
  belongs_to :course
  validate :not_already_enrolled?

  def not_already_enrolled?
    !Enroll.where(user_id: :user, course_id: :course).exists?
  end
end
