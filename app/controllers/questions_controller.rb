class QuestionsController < ApplicationController
  respond_to :json

  def create
    @question = Question.new(params[:question])

    if @question.save
      respond_with({success: true, question_id: @question.id}, location: nil)
    else
      respond_with({success: false}, location: nil)
    end
  end

  def update
    @question = Question.find(params[:id])

    if @question.update_attributes(params[:question])
      respond_with({success: true, question_id: @question.id}, location: nil)
    else
      respond_with({success: false}, location: nil)
    end
  end

  def destroy
    @question = Question.find(params[:id])

    if @question.destroy
      respond_with({success: true, question_id: @question.id, question: question}, location: nil)
    else
      respond_with({success: false}, location: nil)
    end
  end
end
