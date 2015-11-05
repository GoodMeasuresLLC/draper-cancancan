class Ability
  include ::CanCan::Ability
  prepend ::Draper::CanCanCan

  def initialize(user)
    can :manage, Activity
  end
end

