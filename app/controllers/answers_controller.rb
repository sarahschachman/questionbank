class AnswersController < ApplicationController
  def create
    answer = Answer.new(params.require(:answer)
      .permit(:text))
    add_answer(answer)
  end

end
