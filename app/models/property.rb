class Property < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :user
  has_many :favorites
  has_many :reservations

  validates :name, length: { maximum: 50 }

  has_many_attached :photos
end
