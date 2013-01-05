class QuizzesController < ApplicationController
  respond_to :json

  def index
    respond_with(@quizzes = Quiz.all)
  end

  def show
    @quiz = Quiz.find(params[:id])
    respond_with(@quiz.questions)
  end

  def create
    @quiz = Quiz.new(params[:quiz])

    if @quiz.save
      respond_with(@quiz)
    else
      respond_with("error creating quiz")
    end
  end

  def update
    @quiz = Quiz.find(params[:id])

    if @quiz.update_attributes(params[:quiz])
      respond_with(@quiz)
    else
      respond_with("error updating quiz")
    end
  end

  def destroy
    @quiz = Quiz.find(params[:id])

    if @quiz.destroy
      respond_with(@quiz)
    else
      respond_with("error destroying quiz")
    end
  end
end
