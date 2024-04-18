# frozen_string_literal: true

class User < ApplicationRecord
  has_many :courses
  has_many :enrollements
  has_many :grades
end
