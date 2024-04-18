# frozen_string_literal: true

class Lesson < ApplicationRecord
  belongs_to :course_module
  has_many :contents
end
