class Like < ActiveRecord::Base
	#attr_accessible :book, :user
	belongs_to :book
	belongs_to :user
	belongs_to :article
end
