class Course < ApplicationRecord
  belongs_to :user
  has_many :assignments
  has_many :enrolls
end
