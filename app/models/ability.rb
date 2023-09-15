class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?

    can :manage, Food, users_id: user
    can :read, PublicRecipe # Allow users to read PublicRecipe resources

    # Additional abilities can be defined here for other resources as needed.
  end
end
