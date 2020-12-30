class ThreadController < ApplicationController
    
     #* Get Threads List
     get '/comments' do
         @threds = Threads.all 
         erb :'comments/index'
     end
 
     #* Get new thread form
     get '/comments/new_thread' do
             erb :'comments/new_thread'
             @error = "Please login before posting a comment!"
     end
 
     #* Create new thread from form
     post '/comments/:id' do
         Comment.create(params)
         redirect to '/comments/:id'
     end
   
 
 end 