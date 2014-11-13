class AnswersController < ApplicationController
  
  def create
    answer = Answer.new(params.require(:answer)
      .permit(:text))
    question = Question.find(params[:id])
    question.answers << answer
    question.save
    render json: question.to_json
  end

end
