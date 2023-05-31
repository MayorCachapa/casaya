require 'date_validator'
class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :property

  validates :user_id, :property_id, :starts_at, :ends_at, :total_price, presence: true
  validates :ends_at, date: { after_or_equal_to: :starts_at }
end
