class ThreadController < ApplicationController
    
     #* Get Threads List
     get '/comments' do
         @threds = Threads.all 
         erb :'comments/index'
     end
 
     #* Get new comment form
     get '/comments/new_comment' do
         if logged_in?
             erb :'comments/new_comment'
         else
             @error = "Please login before posting a comment!"
             erb :'sessions/login'
         end
     end
 
     #* Create new comment from form
     post '/comments' do
         Comment.create(params)
         redirect to '/comments'
     end
   
 
 end 