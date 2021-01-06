class HubController < ApplicationController
    ##add login check via helper
    
    get '/hub' do
        if logged_in?
            erb :hub
        else
            erb :'sessions/login'  
        end 
    end 


end 
