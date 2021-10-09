class ApplicationController < ActionController::API
    # before_action :authorized

    def encode_token(payload)
        JWT.encode(payload, Rails.application.secrets.secret_key_base)
    end

    def auth_header
        request.headers['Authorization']
    end

    def decode_token
        if auth_header
            token = auth_header.split(' ')[1]
            begin
                JWT.decode(token, Rails.application.secrets.secret_key_base)
            rescue JWT::DecodeError
                nil
            end
        end
    end

    # def current_user
    #     if decode_token
    #         user_id = decode_token[0]['user_id']
    #         @user = user.find_by(id: user_id)
    #     end
    # end

    # def logged_in?
    #     !!current_user
    # end

    # def authorized
    #     render json: {message: 'Please log in'}, status: :unauthorized unless logged_in?
    # end
end
