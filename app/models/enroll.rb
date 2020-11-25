class Enroll < ApplicationRecord
  belongs_to :user
  belongs_to :course
  validate :not_already_enrolled?
  validate :not_the_instructor?

  def not_already_enrolled?
    !Enroll.where(user_id: :user, course_id: :course).exists?
  end
  def not_the_instructor?
    Course.where(user_id: :user, id: :course).exists?
  end
end
