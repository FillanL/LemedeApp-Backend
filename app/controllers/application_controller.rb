class ApplicationController < ActionController::API


    def get_token(payload)
        JWT.encode(payload, ENV["SECRET_KEY"],'HS256')

    end

    def decode_token(payload)
        JWT.decode(payload,ENV["SECRET_KEY"], true ,{algorithm:'HS256'}).first["id"]
    end

end
