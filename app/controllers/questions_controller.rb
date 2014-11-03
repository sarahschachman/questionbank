class QuestionsController < ApplicationController
  def index
    render json: Question.all, :include => :answers
  end

  def create
    question = Question.new(params.require(:question).permit(:text))
    params[:answers].each do |a|
      question.answers << Answer.new(a.permit(:text))
    end
    question.save
    render json: question.to_json(:include => :answers)
  end

  def update

  end



 

end
