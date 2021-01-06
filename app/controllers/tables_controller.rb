class TablesController < ApplicationController
    get '/problem_tables/addition_tables/addition_table_1' do
        if logged_in?
            erb :'problem_tables/addition_tables/addition_table_1'
        else
            erb :'sessions/login'  
        end 
    end 

    get '/problem_tables/subtraction_tables/subtraction_table_1' do
        if logged_in?
            erb :'problem_tables/subtraction_tables/subtraction_table_1'
        else
            erb :'sessions/login'  
        end 
    end 

    get '/problem_tables/multiplication_tables/multiplication_table_1' do
        if logged_in?
            erb :'problem_tables/multiplication_tables/multiplication_table_1'
        else
            erb :'sessions/login'  
        end 
    end 

    get '/problem_tables/division_tables/division_table_1' do
        if logged_in?
            erb :'problem_tables/division_tables/division_table_1'
        else
            erb :'sessions/login'  
        end 
    end 
end 


