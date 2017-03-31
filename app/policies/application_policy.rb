class ApplicationPolicy
  attr_reader :user, :post

  def initialize(user, post)
    @user = user
    @post = post
  end
  
  def create?
    false
  end
  
  def new?
    create?
  end
  
  def update?
    false
  end

  def edit?
    update?
  end
  
  def destroy?
    false
  end

end
