class User < ApplicationRecord
  has_many :books
  has_many :reviews

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :timeoutable,
         :omniauthable, omniauth_providers: [:google_oauth2]

  def self.create_from_provider_data(provider_data)
    where(provider: provider_data.provider, uid: provider_data.uid).first_or_create do |user|
      user.email = provider_data.info.email
      # user.name = provider_data.info.name
      # user.first_name = provider_data.info.first_name
      # user.last_name = provider_data.info.last_name
      user.image = provider_data.info.image
      user.password = Devise.friendly_token[0, 20]
    end
  end

end
