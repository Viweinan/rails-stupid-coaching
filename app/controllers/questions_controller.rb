class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @message = params[:message]
    @coach_answer = " "
    if @message == "I am going to work!"
      @coach_answer = "Great!"
    elsif @message.include?("?")
      @coach_answer = "Silly question, get dressed and go to work!"
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
  end
end
