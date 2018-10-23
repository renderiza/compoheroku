class ScenesController < ApplicationController
	before_action :find_scene, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, except: [:index, :show]
	before_action :correct_user, only: [:edit, :update, :destroy]

	def index
		@scenes = Scene.all
	end

	def show
	end

	def new
		@scene = current_user.scenes.build
	end

	def create
		@scene = current_user.scenes.build(scene_params)

		if @scene.save
			redirect_to scenes_path, notice: "Successfully created new Scene"
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @scene.update(scene_params)
			redirect_to @scene, notice: "Scene was Successfully updated!"
		else
			render 'edit'
		end
	end

	def destroy
		@scene.destroy
		redirect_to root_path
	end

	private

	def scene_params
		params.require(:scene).permit(
			:name,
			:description,
			:image
		)
	end

	def find_scene
		@scene = Scene.find(params[:id])
	end

	def correct_user
		@scene = current_user.scenes.find_by(id: params[:id])
		redirect_to scenes_path, notice: "Not authorized to edit this scene" if @scene.nil?
	end

end ####