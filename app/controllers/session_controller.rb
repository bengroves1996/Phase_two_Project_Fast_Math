class SessionController < ApplicationController

    get '/' do
        erb :'sessions/login'   
    end 

    post '/login' do
        user = User.find_by_username(params[:user][:username])
        if user && user.authenticate(params[:user][:password])
            session[:user_id] = user.id
            redirect to '/hub'
        else
            redirect to '/users/signup'
        end
    end

    delete '/logout' do
        session.clear
        redirect to '/'
    end

    
end