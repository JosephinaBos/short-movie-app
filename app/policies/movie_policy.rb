class MoviePolicy < ApplicationPolicy

  def new?
    user && user.admin?
  end

  def edit?
    user && user.admin?
  end

  def destroy?
    user && user.admin?
  end

end
