class PagesController < ApplicationController
    
     #* Get Page List
     get '/comments' do
        if logged_in?
         @pages = Page.all 
         erb :'comments/index'
        else
            erb :'sessions/login'  
        end 
     end
 
     #* Get new pageform
     get '/comments/new_page' do
        if logged_in?
             erb :'comments/new_thread'
             @error = "Please login before posting a comment!"
        else
            erb :'sessions/login'  
        end 
     end
 end 
