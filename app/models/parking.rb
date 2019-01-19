class Parking < ApplicationRecord
    belongs_to :user
    has_many :reservations, dependent: :destroy

    attachment :parking_image

end
