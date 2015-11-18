class User < ActiveRecord::Base
  resourcify
  rolify :before_add => :before_add_method
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  after_initialize :set_default_role

  def set_default_role
    self.role ||= :standard
  end

  def before_add_method(role)
    @user = User.find(1)
    user.add_role :premium
  end

  def admin?
    role == 'admin'
  end

  def standard?
    role == 'standard'
  end

  def premium?
    role == 'premium'
  end
end
