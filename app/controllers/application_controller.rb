class ApplicationController < ActionController::API


    def get_token(payload)
        JWT.encode(payload, 'ef','HS256')

    end

    def decode_token(payload)
        JWT.decode(payload,'ef', true ,{algorithm:'HS256'}).first["id"]
    end

end
