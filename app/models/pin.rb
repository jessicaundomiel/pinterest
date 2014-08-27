class Pin < ActiveRecord::Base
		
	# validates :user_id, presence: true
	# validates :board_id, presence: true


	mount_uploader :image, ImageUploader

	belongs_to :board
	belongs_to :user
end
