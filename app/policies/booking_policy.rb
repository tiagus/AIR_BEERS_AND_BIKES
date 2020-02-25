class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
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

  private

  def user_is_owner_or_admin?
    record.user == user # || user.admin?
  end
end
