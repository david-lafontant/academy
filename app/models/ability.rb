# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.admin?
      can :manage, :all
    else
      # cannot %i[create edit update destroy], :all
      #   can :read, :all, user_id: user.id
      can :read, :all
    end
  end
end
