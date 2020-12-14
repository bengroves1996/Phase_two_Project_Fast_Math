class CommentController < ApplicationController
   #CRUD, REMEMBER CRUD!
   
    #* Get Comments List
    get '/comments' do
        @comments = Comment.all 
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



    #* Get edit comment form
    get '/comments/:id/edit' do
        @comment = Comment.find(params[:id])
        erb :'comments/edit'
    end

    #* Update comment
    patch '/comments/:id' do
        comment = Comment.find(params[:id])
        comment.update(params[:comment])
        redirect to "/comments"
    end

    #* delete comment
    delete '/comments/<%= @comment.id %>' do
        comment = Comment.find(params[:id])
        comment.destroy
        redirect to '/comments'
    end 

  

end 