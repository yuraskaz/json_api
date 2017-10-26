class RatesController < ApplicationController

	def set
	

    @rate = Rate.new(set_params)
    if @rate.save
      render json: @rate, status: 200
    else
      render json: @rate.errors, status: 400
    end
  end

  private

  def set_params
    params.require(:rate).permit(:rating, :post_id)
  end
end

