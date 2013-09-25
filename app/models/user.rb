class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :first_name, :last_name, :email, :password, :password_confirmation, :remember_me, :lesson_viewed

  def full_name
    [self.first_name+" "+self.last_name].join rescue ""
  end
end
