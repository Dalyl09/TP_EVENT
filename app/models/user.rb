class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :event_users
has_many :events, through: :event_users
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
