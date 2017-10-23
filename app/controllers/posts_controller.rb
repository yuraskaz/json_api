class PostsController < ApplicationController
	respond_to :json

  def create
    user = User.post_owner create_post_params[:login]
    @post =Post.create(build_post_params(user))
    respond_with @post
  end

  private

    def build_post_params(user)
      create_post_params.merge(user: user).reject { |k, _| k == 'login' }
    end

    def create_post_params
      params.require(:post).permit(:title, :body, :ip, :login)
    end
end

