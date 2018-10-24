class User < ApplicationRecord
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
	devise :database_authenticatable, :registerable,
		:recoverable, :rememberable, :validatable
	
	has_many :scenes

	validates_uniqueness_of :username

	has_attached_file :avatar, 
		path: ":rails_root/public/system/:attachment/:id/:style/:filename",
		url: "/system/:attachment/:id/:style/:filename", 
		styles: {
			medium: "300x300>", 
			thumb: "144x144>" 
		}, 
		default_url: "/images/:style/missing.png"

	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

end