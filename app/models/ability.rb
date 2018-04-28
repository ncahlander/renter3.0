class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
      user ||= User.new # guest user (not logged in)
      if user.admin?
        can :manage, :all
      else
        puts "ok"
        puts user.id
        this = user.id-1
        puts "user - 1"
        puts this
        can :read, Profile
        can :create, Profile
        #can :update, Profile, user_id: user.id
        can :update, Profile, user_id:user.id
        can :destroy, Profile, user_id: user.id
      #  can :access_given, ViewerAccess, user_id: user.id
        #can :read, Profile, user_id: user.id
        can :manage, ViewerAccess
        can :read, Review
        can :create, Review, user_id: user.id
        can :edit, Review, user_id: user.id
        can :destroy, Review, user_id: user.id
        #can :read, Review, user_id: user.id
        #can :read, Review, user_id: 11
        #if review.user_id matches user.id of passed in user, they can
        #can :read, :all
      end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end