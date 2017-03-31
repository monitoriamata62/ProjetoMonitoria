class DisciplinaPolicy < ApplicationPolicy
  
  def create?
    @user.professor?
  end
  
  def update?
    @user.professor?
  end
  
  def destroy?
    @user.professor?
  end
 
end
