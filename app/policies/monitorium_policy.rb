class MonitoriumPolicy < ApplicationPolicy
 
  def create?
    @user.monitor?
  end
  
end
