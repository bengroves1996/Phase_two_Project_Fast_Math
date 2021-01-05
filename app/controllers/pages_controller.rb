class PagesController < ApplicationController
    
     #* Get Page List
     get '/comments' do
         @pages = Page.all 
         erb :'comments/index'
     end
 
     #* Get new pageform
     get '/comments/new_page' do
             erb :'comments/new_thread'
             @error = "Please login before posting a comment!"
     end
 
 
 end 