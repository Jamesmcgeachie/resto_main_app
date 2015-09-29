class Restaurant < ActiveRecord::Base

	belongs_to :cuisine_type
	has_many :reservations

	validates :name, :capacity, presence: true

	mount_uploader :photo, PhotoUploader
end
