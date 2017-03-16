class User < ApplicationRecord
  enum role: [:normal_user, :monitor, :professor, :admin]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :monitorium
end
