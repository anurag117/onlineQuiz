class QuizesController < ApplicationController

def index
	@quizzes=Quiz.all
    render json: @quizzes
end


def create
  @quiz = Quiz.new(params[:quize])
 
    if @quiz.save
     @quizzes=Quiz.all
      render json: @quizzes
    else
     render :json => 'question not saved. Please try again'
    end
end

def remove
	@quiz=Quiz.find(params[:quize][:id])
    @quiz.delete
    render :json => 'deleted'
end

end