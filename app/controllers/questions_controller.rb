class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @answer = params[:answer]
    if @answer == "I am going to work"
      @response = "Great"
    elsif @answer && @answer.to_s.end_with?("?")
      @response = "Silly question, get dressed and go to work!"
    else
      @response = "I dont care, get dressed and go to work!"
    end
  end
end
