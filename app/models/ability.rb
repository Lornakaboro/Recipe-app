class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?

    can :manage, Recipe, user_id: user.id
    can :destroy, Recipe
    can :read, Recipe, public: true
    can :read, PublicRecipe, public: true 
  end
end
