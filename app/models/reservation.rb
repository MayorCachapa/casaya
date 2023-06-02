require 'date_validator'
class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :property
  has_many :reviews

  validates :user_id, :property_id, :starts_at, :ends_at, :guests, presence: true
  validates :ends_at, date: { after_or_equal_to: :starts_at }

  before_save :calculate_total_price

  private

  def calculate_total_price
    return unless starts_at && ends_at && property

    nights = (ends_at - starts_at).to_i
    self.total_price = nights * property.price_per_night
  end
end
