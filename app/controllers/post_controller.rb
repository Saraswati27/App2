class PostController < ApplicationController
  
before_action :set_post, only: [:show, :edit, :update]

def index
  @posts = Post.order('created_at DESC')
end

def show
end

def new
  @post = Post.new
end

def create
  @post = Post.new
  @post = Post.new(post_params)
  if @post.save
    format.html { redirect_to @post, notice: "post was successfully created." }
    format.json { render :show, status: :created, location: @post }
   else
      render :new
   end
end

def edit
end

def update
  if @post.update_attributes(post_params)
    redirect_to post_path(@post)
  else
    render :edit
  end
end

private

def post_params
params.require(:post).permit(:title, :body, :image)
end

def set_post
@post = Post.find(params[:id])
end


  
  def delete
  end
end
