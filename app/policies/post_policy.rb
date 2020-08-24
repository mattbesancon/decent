class PostPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user.try(:admin?)
        scope.all
      else
        scope.where(published: true)
      end
    end
  end

  def update?
    user.admin?
  end

  def destroy?
    user.admin?
  end
end
