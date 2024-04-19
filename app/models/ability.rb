# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    cannot :create, User if user.student?
    cannot :destroy, User if user.student?
    cannot :create, User if user.instructor?
    cannot :destroy, User if user.instructor?

    cannot :create, Course if user.student?
    cannot :update, Course if user.student?
    cannot :destroy, Course if user.student?
    cannot :create, Course if user.instructor?
    cannot :update, Course if user.instructor?
    cannot :destroy, Course if user.instructor?

    cannot :create, Lesson if user.student?
    cannot :update, Lesson if user.student?
    cannot :destroy, Lesson if user.student?
    cannot :create, Lesson if user.instructor?
    cannot :update, Lesson if user.instructor?
    cannot :destroy, Lesson if user.instructor?

    cannot :create, CourseModule if user.student?
    cannot :update, CourseModule if user.student?
    cannot :destroy, CourseModule if user.student?
    cannot :create, CourseModule if user.instructor?
    cannot :update, CourseModule if user.instructor?
    cannot :destroy, CourseModule if user.instructor?

    cannot :create, Grade if user.student?
    cannot :update, Grade if user.student?
    cannot :destroy, Grade if user.student?
    cannot :create, Grade if user.instructor?
    cannot :update, Grade if user.instructor?
    cannot :destroy, Grade if user.instructor?

    cannot :create, Enrollement if user.student?
    cannot :update, Enrollement if user.student?
    cannot :destroy, Enrollement if user.student?
    cannot :create, Enrollement if user.instructor?
    cannot :update, Enrollement if user.instructor?
    cannot :destroy, Enrollement if user.instructor?

    cannot :create, Content if user.student?
    cannot :update, Content if user.student?
    cannot :destroy, Content if user.student?
    cannot :create, Content if user.instructor?
    cannot :update, Content if user.instructor?
    cannot :destroy, Content if user.instructor?

    can :manage, :all if user.admin?
    # Define abilities for the user here. For example:
    #
    #   return unless user.present?
    #   can :read, :all
    #   return unless user.admin?
    #   can :manage, :all
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, published: true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/blob/develop/docs/define_check_abilities.md
  end
end
