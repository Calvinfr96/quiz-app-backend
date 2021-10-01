class QuestionsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index
        questions = Question.all
        render json: questions
    end

    def create
        question = Question.create!(question_params)
        render json: question, status: :created
    end

    def show
        question = find_question
        render json: question
    end

    def update
        question = find_question
        question.update!(question_params)
        render json: question
    end

    def destroy
        question = find_question
        question.destroy
        head :no_content
    end

    private
    
    def question_params
        params.permit(:prompt, :answers, :correct_index)
    end

    def render_not_found_response
        render json: {error: "Question not found"}, status: :not_found
    end

    def render_unprocessable_entity_response(invalid)
        render json: {errors: invalid.record.errors}, status: :unprocessable_entity
    end

    def find_question
        Question.find(params[:id])
    end
end
