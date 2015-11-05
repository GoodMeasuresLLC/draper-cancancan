class Ability
  include ::CanCan::Ability
  prepend ::Draper::CanCan

  def initialize(user)
    can :manage, Activity
  end
end

