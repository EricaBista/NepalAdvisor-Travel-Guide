class Ability
  include CanCan::Ability

  def initialize(user)
    if user.role? :administrator
      can :manage, :all    
    elsif user.role? :editor
      can :manage, [User], :id => user.id
      can :manage, Category
      can :manage, Item
      can :read, ActiveAdmin::Page, :name => "Dashboard"  
    else
      can :read, :all
    end
  end
end
