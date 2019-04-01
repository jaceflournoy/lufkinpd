class Ability
  include CanCan::Ability

  def initialize(user)
    # Add "load_and_authorize_resource" to each new model to verify it works
    user ||= User.new # guest user (not logged in)
    can :manage, :all # Guest

    if user.role == "admin"
      can :manage, :all
    end

  end
end
