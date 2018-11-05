class BoardsController < ApplicationController

	before_action :set_board, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, except: [:index, :show]
	before_action :correct_user, only: [:edit, :update, :destroy]

	def index
		@boards = Board.all
	end

	def new
		@board = current_user.boards.build
	end

	def create
		@board = current_user.boards.build(board_params)
		if @board.save
			redirect_to user_path(current_user.username), notice: 'Board was successfully created.'
		else
			render :new
		end
	end

	def show
	end

	def edit
	end

	def update
		if @board.update(board_params)
			redirect_to user_path(current_user.username), notice: 'Board was successfully updated.'
		else
			render :edit
		end
	end

	def destroy
		@board.destroy
		redirect_to user_path(current_user.username), notice: 'Board was successfully deleted.'
	end

	private

	def set_board
		@board = Board.find(params[:id])
	end

	def board_params
		params.require(:board).permit(
			:name
		)
	end

	def correct_user
		@scene = current_user.boards.find_by(id: params[:id])
		redirect_to boards_path, notice: "Not authorized to edit this board" if @board.nil?
	end

end
