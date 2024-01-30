class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :dresses, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :booked_dresses, through :bookings, class_name :dress

  # validates :email, presence: true, uniqueness: true
  # validates :password, presence: true, length: { minimum: 6 }
  validates :name, presence: true
end
