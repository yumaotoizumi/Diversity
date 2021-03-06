class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
          has_many :parkings, dependent: :destroy
          has_many :reservations, dependent: :destroy


  devise :omniauthable, omniauth_providers: %i[facebook]
  # omniauthのコールバック時に呼ばれるメソッド
  def self.from_omniauth(auth)
	    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
	      user.email = auth.info.email
	      user.password = Devise.friendly_token[0,20]
	      user.name = auth.info.name
	    end
  end

end
