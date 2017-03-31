class MonitoriumPolicy < ApplicationPolicy
 
  def create?
    @user.professor?
  end
  
end
