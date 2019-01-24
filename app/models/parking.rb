class Parking < ApplicationRecord
    belongs_to :user
    has_many :reservations, dependent: :destroy
    has_many :parking_images, dependent: :destroy

    attachment :parking_image

    geocoded_by :address
    after_validation :geocode, if: :address_changed?
end
