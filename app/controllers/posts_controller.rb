class PostsController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]

    
    def index
        @posts = Post.all
    end
    
    def show
        @post = Post.find(params[:id])
    end
    
    def new
        @post = current_user.posts.build
    end
    
    def create
        @post = current_user.posts.build(post_params)
    
        if (@post.save)
            redirect_to @post
        else
            render :new
        end
    end
    
    def edit
    end
    
    def update
        
    end
    
    def delete
        
    end
    
    private 

    def post_params
        params.require(:post).permit(:title, :content)
    end

    def authenticate_user!
        redirect_to '/login' unless current_user
    end
end
