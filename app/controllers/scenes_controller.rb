class ScenesController < ApplicationController
	before_action :find_scene, only: [:show, :edit, :update, :destroy]

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
			redirect_to @scene, notice: "Successfully created new Scene"
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
			:description
		)
	end

	def find_scene
		@scene = Scene.find(params[:id])
	end

end ####