class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:facebook]
         
  def self.current_user
    Thread.current[:current_user]
  end

  def self.current_user=(usr)
    Thread.current[:current_user] = usr
  end
  
  def self.from_omniauth(auth)
      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
        user.provider = auth.provider
        user.uid = auth.uid
        user.email = auth.info.email
        user.username = auth.info.name
        user.password= Devise.friendly_token[0,20]
        user.save!
      end
  
  end
  
end
