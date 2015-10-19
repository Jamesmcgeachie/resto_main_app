class Restaurant < ActiveRecord::Base

	belongs_to :cuisine_type
	has_many :reservations
	has_many :reviews

	validates :name, :capacity, presence: true

	mount_uploader :photo, PhotoUploader
end
