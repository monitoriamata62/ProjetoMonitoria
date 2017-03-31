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
  
end
