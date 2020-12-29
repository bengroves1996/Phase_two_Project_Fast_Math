class CommentController < ApplicationController
   #CRUD, REMEMBER CRUD!
   
    #* Get Comments List
    get '/comments' do
        if logged_in?
            @comments = Comment.all 
            erb :'comments/index'
        else
            erb :'sessions/login'  
        end
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
        if logged_in?
            Comment.create(params)
            redirect to '/comments'
        else
            erb :'sessions/login'
        end 
    end

    #* Get comment show page
    get '/comments/:id' do
        if logged_in?
            @comment = Comment.find_by(id: params[:id])
                if @comment == nil
                    redirect to '/comments'
                end
            erb :'comments/show'   
        else
            erb :'sessions/login'
        end     
    end
    
    #* Get edit comment form
    get '/comments/:id/edit' do
        if logged_in?
            @comment = Comment.find(params[:id])
            erb :'comments/edit'
        else 
            erb :'sessions/login'
        end 
    end

    #* Update comment
    patch '/comments/:id' do
        comment = Comment.find(params[:id])
        comment.update(params[:comment])
        redirect to "/comments"
    end

    #* Delete comment
    delete '/comments/:id' do
        comment = Comment.find(params[:id])
        comment.destroy
        redirect to '/comments'
    end 

  

end 