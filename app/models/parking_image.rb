class ParkingImage < ApplicationRecord
	belongs_to :parking
	attachment :image
	validates :image, presence: true

end
