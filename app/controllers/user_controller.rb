class UserController < ApplicationController
    get '/users/signup' do
        erb :'users/signup'
    end 

    post '/users/signup' do
        user = User.new(params[:user])
        if user.save
            session[:user_id] = user.id
            redirect to '/hub'
        else 
            @error = user.errors.full_messages.join(" - ")
            erb :'users/signup'
        end
    end
end