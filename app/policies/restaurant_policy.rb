class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
      # scope.where(user: user)
    end
  end

  # def new?
  #   true
  # end

  def create?
    true
  end

  def show?
    true
  end

  # def edit?
  #   # if current_user == restaurant.user
  #   #    true
  #   # else
  #   #    false
  #   # end

  #   # user == current_user

  #   user == record.user
  # end

  def update?
    user == record.user || user.admin
  end

  def destroy?
    user == record.user || user.admin
  end
end
