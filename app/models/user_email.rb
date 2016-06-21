class UserEmail < ActiveRecord::Base
	belongs_to :user
	mount_uploader :attachment, AvatarUploader
end
