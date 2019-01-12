class Parking < ApplicationRecord
    belongs_to :user
    attachment :parking_image

end
