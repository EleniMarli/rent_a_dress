class Dress < ApplicationRecord
  CATEGORY = %w(casual formal cocktail maxi sundress evening party summer)
  SIZE = %w(s m l xl xxl)

  has_one_attached :photo

  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy

  validates :title, presence: true, length: { minimum: 6 }
  validates :description, presence: true, length: { minimum: 20 }
  validates :size, presence: true
  validates :color, presence: true
  validates :category, presence: true
  validates :price_per_day, presence: true, numericality: { greater_than: 0 }

  validates_inclusion_of :category, in: CATEGORY
  validates_inclusion_of :size, in: SIZE
end
