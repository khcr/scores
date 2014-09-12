class ScoresController < ApplicationController

	def index
		@scores = Score.order('points desc')
		@score = Score.new
	end

	def create
		@score = Score.create(score_params)
	end

	def update
		@score = Score.find(params[:id])
		@score.update_attribute(:points, @score.points += 1)
	end

	private

	def score_params
		params.require(:score).permit(:name)
	end
end
