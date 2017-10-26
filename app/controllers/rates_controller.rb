class RatesController < ApplicationController

	def create
        @rate = Rate.new(rate_params[:rating])
        render(nothing: true) unless @post = Post.find(rate_params[:post_id])
        @rate.post_id = @post.id
      if @rate.save
        render json:  @post&.rating
      else
        render nothing: true
      end
    end

  private

    def rate_params
      params.require(:rate).permit(:rating,:post_id)
    end
end
