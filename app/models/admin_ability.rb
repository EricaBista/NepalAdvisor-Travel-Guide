class AdminAbility
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.role?('editor')
      can :manage, Item
    end
    
    if user.role?('administrator')
      can :manage, User
    end
  end
end
