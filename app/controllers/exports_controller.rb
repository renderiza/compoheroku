class ExportsController < ApplicationController

	def update

		if current_user.export.update(export_params)
			redirect_to :back, notice: 'Export was successfully updated.'
		end
	
	end

	def export_params
		params.require(:export).permit(
			:width,
			:height
		)
	end

end