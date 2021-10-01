class AttemptsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index
        attempts = Attempt.all
        render json: attempts
    end

    def create
        attempt = Attempt.create!(attempt_params)
        render json: attempt, status: :created
    end

    def show
        attempt = find_attempt
        render json: attempt
    end

    private
    
    def attempt_params
        params.permit(:number_correct, :passed?, :quiz_id, :user_id)
    end

    def render_not_found_response
        render json: {error: "Attempt not found"}, status: :not_found
    end

    def render_unprocessable_entity_response(invalid)
        render json: {errors: invalid.record.errors}, status: :unprocessable_entity
    end

    def find_attempt
        Attempt.find(params[:id])
    end
end
