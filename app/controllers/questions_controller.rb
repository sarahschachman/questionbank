class QuestionsController < ApplicationController
  def index
    render json: Question.all
  end

  def create
    json = params[:question]
    print params
    question = Question.new(params.require(:question).permit(:text))
    question.save
    render json: question
  end

  def update

  end



 

end
