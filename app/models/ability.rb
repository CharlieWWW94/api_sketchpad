# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?
      can :manage, :all
    
    # if user.client?
    #   cannot :read, User.all
    #   can :read, User.where(id: user.id)
    #   can :manage, Pad.where(user_id: user.id)
    #   can :manage, Frame.where(user_id: user.id)
    # end

    # if user.admin?
    #   can :manage, :all
    # end
    
  end
end
