class Booking < ApplicationRecord
  belongs_to :dress
  belongs_to :user

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :status, presence: true

  validate :valid_booking_dates

  enum status: { pending: 0, accepted: 1, declined: 2 }

  private

  def valid_booking_dates
    if start_date.present? && end_date.present?
      errors.add(:end_date, "must be after start date") if end_date < start_date
    end
  end
end
