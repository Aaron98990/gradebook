class Assignment < ApplicationRecord
  belongs_to :course
  has_many :grade
  validates :name, :full_credit, presence:true
end
