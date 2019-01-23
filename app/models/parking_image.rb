class ParkingImage < ApplicationRecord
	belongs_to :parking
	attachment :image

end
