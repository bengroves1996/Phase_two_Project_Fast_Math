class LessonController < ApplicationController
    
    get '/lessons/addition' do
        erb :'lessons/addition'
    end 

    get '/lessons/subtraction' do
        erb :'lessons/subtraction'
    end 

    get '/lessons/multiplication' do
        erb :'lessons/multiplication'
    end 

    get '/lessons/division' do
        erb :'lessons/division'
    end 

end 