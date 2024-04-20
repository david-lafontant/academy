# frozen_string_literal: true

class User < ApplicationRecord
  # attr_accessor :role
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :lockable, :trackable

  has_many :courses
  has_many :enrollements
  has_many :grades

  enum role: %i[student instructor admin]

  after_initialize :set_default_role, if: :new_record?

  def set_default_role
    self.role ||= :user
  end

  def admin?
    self.role == 'admin'
  end
end
