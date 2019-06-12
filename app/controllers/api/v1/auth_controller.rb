class Api::V1::AuthController < ApplicationController

    def log_in
        # byebug

        user = User.find_by(username: params[:auth]["username"])

        if user && user.authenticate(params[:auth]["password"])
            token = get_token({id: user.id})

            render json: {currentUser:user, token: token}
        else
            render json: {error:"could not be found"}, status: 401
        end

        # byebug
    end

    def show
        token = request.headers['Authentication']
        # byebug
        begin 
            decode = JWT.decode(token,ENV["SECRET_KEY"], true ,{algorithm:'HS256'}).first["id"]
            # in case of nil
        rescue JWT::DecodeError
            return nil
        end
        # byebug
        
        current = user ||= User.find_by(id: decode)
        # byebug
        

        
            # render json: {...current, except: :password_digest}
       render json: current
    end

end
