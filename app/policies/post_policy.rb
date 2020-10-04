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
    user.admin?
  end

  def destroy?
    user.admin?
  end

  
end
