class DisciplinaPolicy < ApplicationPolicy
  
  def create?
    @user.professor?
  end
 
end
