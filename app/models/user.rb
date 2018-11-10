class User < ApplicationRecord
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
	devise :database_authenticatable, :registerable,
		:recoverable, :rememberable, :validatable
	
	has_many :scenes
	has_many :boards

	validates_uniqueness_of :username
	validates :username, format: { with: /\A[a-zA-Z0-9]+\Z/ }

	has_attached_file :avatar, 
		path: ":rails_root/public/system/:attachment/:id/:style/:filename",
		url: "/system/:attachment/:id/:style/:filename", 
		styles: {
			medium: "300x300>", 
			thumb: "144x144>" 
		}, 
		default_url: "/images/:style/missing.png"

	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/


	has_one :export

	after_save do |user| 
		@export = Export.new

		@export.user_id = user.id

		@export.save
	end
	
end