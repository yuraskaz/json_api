class PostsController < ApplicationController
	

  def index
    @post=Post.all
    render json: @post
  end

  


	def create
    
    user = User.post_owner create_post_params[:login]
    
    @post = Post.new(build_post_params(user))
    
    if @post.save
      render json: { status: 200 , }.to_json
    else
      render json: { status: 422}.to_json
      
    end
  end

  private

    def build_post_params(user)
      create_post_params.merge(user: user).reject { |k, _| k == 'login' }
    end

    def create_post_params
      params.require(:post).permit(:title, :body, :ip, :login)
    end
end

