# frozen_string_literal: true

class Grade < ApplicationRecord
  belongs_to :user
  belongs_to :course
end
