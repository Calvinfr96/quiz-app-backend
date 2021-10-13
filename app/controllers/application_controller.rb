class ApplicationController < ActionController::API
    before_action :authorized

    def encode_token(payload)
        JWT.encode(payload, "41caf2d7e481f826ab6a0d096e9bab7461ea78ef0c623555595216d4330306bb7ed1a3c25b906fb8026611dbfd1dbfcecdf601696d6bafb0f730e1b90bab8212")
    end

    def auth_header
        request.headers['Authorization']
    end

    def decode_token
        if auth_header
            token = auth_header.split(' ')[1]
            begin
                JWT.decode(token, "41caf2d7e481f826ab6a0d096e9bab7461ea78ef0c623555595216d4330306bb7ed1a3c25b906fb8026611dbfd1dbfcecdf601696d6bafb0f730e1b90bab8212")
            rescue JWT::DecodeError
                nil
            end
        end
    end

    def current_user
        if decode_token
            user_id = decode_token[0]['user_id']
            @user = User.find_by(id: user_id)
        end
    end

    def logged_in?
        !!current_user
    end

    def authorized
        render json: {message: 'Please log in'}, status: :unauthorized unless logged_in?
    end
end
