class PostsController < ApplicationController
	

  def index
    @post=Post.all
    render json: @post
  end

  def show
    @post= Post.by_rate
    render json: @post
  end

  


	def create
    @params = set_params
    @params[:user_id] = User.create_if_not_exists(@params.delete(:login))
    @post = Post.new(@params)
    if @post.save
      render json: @post, status: 200
    else
      render json: @post.errors, status: 422
    end
  end

  private

  def set_params
    params.require(:post).permit(:title, :body, :login, :ip)
  end

end

