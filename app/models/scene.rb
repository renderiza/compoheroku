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

	def repost(user)
		repost_scene = self.dup
		repost_scene.user_id = user.id
		repost_scene.original_scene_id = self.id
		repost_scene.image = self.image
		repost_scene.save
	end

	def is_repost?
		original_scene_id.present?
	end

	def original_scene
		Scene.find(original_scene_id) if is_repost?
	end

end