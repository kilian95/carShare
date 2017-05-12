# https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
class Ability
  include CanCan::Ability

  def initialize(model)
  
    user ||= User.new
    case user
    when User
      can :manage, Request
      can :manage, Offer

    end
  end
end
