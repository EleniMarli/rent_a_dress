class Dress < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :title, presence: true, length: { minimum: 10 }
  validates :description, presence: true, length: { minimum: 20 }
  validates :size, presence: true
  validates :color, presence: true
  validates :category, presence: true
  validates :price_per_day, presence: true, numericality: { greater_than: 0 }

  enum category: { casual: 'casual', formal: 'formal', cocktail: 'cocktail', maxi: 'maxi', sundress: 'sundress', evening: 'evening', party: 'party', summer:'summer'}
  enum size: { s: 's', m: 'm', l: 'l', xl: 'xl', xxl: 'xxl' }
end
