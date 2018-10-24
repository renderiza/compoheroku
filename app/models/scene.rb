class Scene < ApplicationRecord
	belongs_to :user
	has_attached_file :image, 
		path: ":rails_root/public/system/:attachment/:id/:style/:filename",
		url: "/system/:attachment/:id/:style/:filename", 
		styles: {
			medium: "300x300>", 
			thumb: "144x144>" 
		}, 
		default_url: "/images/:style/missing.png"

	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
	validates_presence_of :name
end