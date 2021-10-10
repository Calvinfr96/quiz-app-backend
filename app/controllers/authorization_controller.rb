class AuthorizationController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def create
        @user = User.find_by(name: auth_params[:name])
        if @user && @user.authenticate(auth_params[:password])
            @token = encode_token({user_id: @user.id})
            render json: {user: UserSerializer.new(@user), jwt: @token}, status: :accepted
        else
            render json: {error: 'Invalid Username or Password'}, status: :unauthorized
        end
    end

    def check_user
        @user = current_user
        render json: {user: UserSerializer.new(@user)}, status: :accepted
    end

    private

    def auth_params
        params.require(:authorization).permit(:name, :password)
    end
end
