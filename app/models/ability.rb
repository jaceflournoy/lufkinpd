class Ability
  include CanCan::Ability

  def initialize(user)
    # Add "load_and_authorize_resource" to each new model to verify it works
    alias_action :create, :read, :update, to: :cru
    user ||= User.new # guest user (not logged in)
    can :cru, :all # Guest
    cannot :cru, :user

    if user.role == "admin"
      can :manage, :all
      can :access, :rails_admin
      can :read, :dashboard
    end

  end
end
