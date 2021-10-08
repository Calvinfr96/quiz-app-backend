class AuthorizationController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def create
        @user = User.find_by(name: params[:username])
        if @user && @user.authenticate(params[:password])
            token = encode_token(user_id: @user.id)
            render json: {user: @user, jwt: @token}, status: :accepted
        else
            render json: {error: 'Invalid Username or Password'}, status: :unauthorized
        end
    end
end
