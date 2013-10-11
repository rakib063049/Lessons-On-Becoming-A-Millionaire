class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  attr_accessible :first_name, :last_name, :email, :password, :password_confirmation, :remember_me, :lesson_viewed,
                  :uid, :provider, :auth_token, :auth_expired_at, :role_ids

  has_many :authentications
  has_and_belongs_to_many :roles
  before_save :setup_role

  def full_name
    [self.first_name+" "+self.last_name].join rescue ""
  end

  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.auth_token = auth.credentials.token
      user.auth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end

  def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
    user = User.where(:provider => auth.provider, :uid => auth.uid).first
    unless user
      user = User.create(  provider:auth.provider,
                           uid:auth.uid,
                           email:auth.info.email,
                           password:Devise.friendly_token[0,20]
      )
    end
    user
  end




  def role?(role)
    return !!self.roles.find_by_name(role.to_s.camelize)
  end

  # Default role is "Registered"
  def setup_role
    if self.role_ids.empty?
      self.role_ids = [2]
    end
  end
end

