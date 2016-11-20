class ProductRecommendationsController < ApplicationController

  def create
    @product_recommendation = ProductRecommendation.new(recommendation_params)
    if @product_recommendation.save
      render json: @product_recommendation.generate, status: 201
    else
      render nothing: true, status: 400
    end
  end


  private

    def recommendation_params
      params.permit(:device_id, :product_recommendation_responses_attributes => [:question_text, :response_text])
    end

end
