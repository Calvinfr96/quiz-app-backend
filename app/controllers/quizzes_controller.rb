class QuizzesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index
        quizzes = Quiz.all
        render json: quizzes
    end

    def create
        byebug
        quiz = Quiz.create!(quiz_params)
        render json: quiz, status: :created
    end

    def show
        quiz = find_quiz
        render json: quiz, serializer: QuizQuestionSerializer
    end

    def update
        quiz = find_quiz
        quiz.update!(quiz_params)
        render json: quiz
    end

    def destroy
        quiz = find_quiz
        quiz.destroy
        head :no_content
    end

    private
    
    def quiz_params
        params.permit(:name)
    end

    def render_not_found_response
        render json: {error: "Quiz not found"}, status: :not_found
    end

    def render_unprocessable_entity_response(invalid)
        render json: {errors: invalid.record.errors}, status: :unprocessable_entity
    end

    def find_quiz
        Quiz.find(params[:id])
    end
end