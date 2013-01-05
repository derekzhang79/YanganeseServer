class QuestionsController < ApplicationController
  respond_to :json

  def create
    @question = Question.new(params[:question])

    if @question.save
      respond_with(@question)
    else
      respond_with("error creating question")
    end
  end

  def update
    @question = Question.find(params[:id])

    if @question.update_attributes(params[:question])
      respond_with(@question)
    else
      respond_with("error updating question")
    end
  end

  def destroy
    @question = Question.find(params[:id])

    if @question.destroy
      respond_with(@question)
    else
      respond_with("error deleting question")
    end
  end
end
