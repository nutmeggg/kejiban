class HomeController < ApplicationController
    def index
        @posts = Post.all
    end

    def write

    end

    def create
        post = Post.new
        post.title = params[:title]
        post.content = params[:content]
        post.save

        redirect_to '/index'
    end

    def modify
        @post = Post.find(params[:post_id])
    end

    def update
        post = Post.find(params[:post_id])
        post.title = params[:title]
        post.content = params[:content]
        post.save

        redirect_to '/index'
    end

    def delete
        @post = Post.find_by(id: params[:post_id])
        if @post
          @post.destroy
          redirect_to '/index'
        else
        end       
    end
end

