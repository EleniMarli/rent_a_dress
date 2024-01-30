class Booking < ApplicationRecord
  belongs_to :dress
  belongs_to :user
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :status, presence: true
end
