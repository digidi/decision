class Ability
  include CanCan::Ability

  def initialize(user)
    # All users #
    user == @user

    can :read, :all 
    cannot :read, Request
    can :create, Request 
    
    can :manage, DangerRequest
    can :manage, CriterionRequest
    can :manage, RequestUser
    # End #
    
    can :manage, :all if user.is? :admin
    
    if user.is? :moderator
      can :manage, Criterion
      can :manage, Danger
      can :manage, Task
      can :manage, Category      
    end
    
    if user.is? :expert
      can :manage, Request
      can :manage, CriterionRequestUser, :user_id => user.id
      can :create, CriterionRequestUser
    end
        
    can :manage, Request, :user_id => user.id
    
    can :edit, :update, User do | user |
      user = @user
    end
    
    
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user permission to do.
    # If you pass :manage it will apply to every action. Other common actions here are
    # :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. If you pass
    # :all it will apply to every resource. Otherwise pass a Ruby class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details: https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
