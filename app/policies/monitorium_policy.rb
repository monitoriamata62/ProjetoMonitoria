class MonitoriumPolicy < ApplicationPolicy
 
  def create?
    @user.monitor?
  end
  
  def update?
    @user.monitor?
  end
  
  def destroy?
    @user.monitor?
  end
  
end
