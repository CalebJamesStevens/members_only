class PostsController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]

    
    def index
        @posts = Post.all
    end
    
    def show
        @post = Post.find(params[:id])
    end
    
    def new
        
    end
    
    def create
        
    end
    
    def edit
    end
    
    def update
        
    end
    
    def delete
        
    end
    
    private 

    def authenticate_user!
        redirect_to '/login' unless current_user
    end
end
