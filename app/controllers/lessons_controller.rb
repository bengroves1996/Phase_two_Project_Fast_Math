class LessonController < ApplicationController
    
    get '/lessons/addition' do
        if logged_in?
            erb :'lessons/addition'
        else
            erb :'sessions/login'  
        end 
    end 

    get '/lessons/subtraction' do
        if logged_in?
            erb :'lessons/subtraction'
        else
            erb :'sessions/login'  
        end 
    end 

    get '/lessons/multiplication' do
        if logged_in?
            erb :'lessons/multiplication'
        else
            erb :'sessions/login'  
        end 
    end 

    get '/lessons/division' do
        if logged_in?
            erb :'lessons/division'
        else
            erb :'sessions/login'  
        end 
    end 

end 
