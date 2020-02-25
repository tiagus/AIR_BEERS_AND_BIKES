class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # @scope.all
      scope.where(user: user)

    end
  end

  def show?
    true
  end

  def create?
    true
  end

  def edit?
    user_is_owner_or_admin?
  end

  def update?
    # user - this is the current user
    # record - this is the restaurant in this case because its a RestaurantPolicy
    user_is_owner_or_admin?
  end

  def destroy?
    # user - this is the current user
    # record - this is the restaurant in this case because its a RestaurantPolicy
    user_is_owner_or_admin?
  end

  private

  def user_is_owner_or_admin?
    record.user == user # || user.admin?
  end
end
