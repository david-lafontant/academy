class Course < ApplicationRecord
  belongs_to :user
  has_many :course_modules
  has_many :enrollements
  has_many :grades
end
