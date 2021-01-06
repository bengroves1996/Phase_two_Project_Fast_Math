class CommentsController < ApplicationController
   #CRUD, REMEMBER CRUD!
   
    get '/comments' do
        if logged_in?
            @comments = Comment.all 
            erb :'comments/index'
        else
            erb :'sessions/login'  
        end
    end

    get '/comments/new_comment' do
        if logged_in?
            erb :'comments/new_comment'
        else
            @error = "Please login before posting a comment!"
            erb :'sessions/login'
        end
    end

    post '/comments' do
        if logged_in?
            comment = Comment.create(name: params[:name])
            user = current_user 
            user.comments << comment
            redirect to '/comments'
        else
            erb :'sessions/login'
        end 
    end

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
    
    get '/comments/:id/edit' do
        if logged_in?
            @comment = Comment.find(params[:id])
            erb :'comments/edit'
        else 
            erb :'sessions/login'
        end 
    end

    patch '/comments/:id' do
        comment = Comment.find(params[:id])
        comment.update(params[:comment])
        redirect to "/comments"
    end

    delete '/comments/:id' do
        comment = Comment.find(params[:id])
        comment.destroy
        redirect to '/comments'
    end 

  

end 