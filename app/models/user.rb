class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

has_one :profile
has_many :photos, through: :profile


after_create :create_profile


def create_profile
  Profile.create(user_id: self.id)
end
end