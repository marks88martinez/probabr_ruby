class Ability
  include CanCan::Ability
  def initialize(user)
    if user.role == 'manager'
      can :manage, :all
    else
      # can [:read, :update, :destroy], Car
      can [:read, :create], Purchase
      can :read, User
      
    end
  end
end