class PostPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user.admin?
        scope.all
      else
        scope.where(verified: true)
      end
    end
  end

  def update?
    is_admin?
  end

  def destroy?
    is_admin?
  end
end
