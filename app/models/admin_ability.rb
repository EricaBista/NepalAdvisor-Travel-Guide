class AdminAbility
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    # A moderator can manage the blog posts
    if user.role?('editor')
      can :manage, Item
    end

    # An administrator can manage the blog posts and manage users
    if user.role?('administrator')
      can :manage, User
    end
  end
end