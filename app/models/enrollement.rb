# frozen_string_literal: true

class Enrollement < ApplicationRecord
  belongs_to :user
  belongs_to :course
end
