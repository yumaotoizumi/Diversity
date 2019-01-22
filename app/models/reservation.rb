class Reservation < ApplicationRecord
	 belongs_to :user
	 belongs_to :parking
	 validates :start_day, presence: true
	 validates :end_day, presence: true



end
