class User < ApplicationRecord
  enum role: [:normal_user, :monitor, :professor, :admin]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :monitorium
  
  
  
  def professor?
    role == 'professor'
  end

  def monitor?
    role == 'monitor'
  end

  def normal_user?
    role == 'normal_user'
  end

  def admin?
    role == 'admin'
  end
  
  
end
