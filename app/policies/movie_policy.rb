class MoviePolicy < ApplicationPolicy

  def destroy?
    @user.admin?
  end

end
