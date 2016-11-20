class ProductRecommendationResponse < ActiveRecord::Base
  validates :product_recommendation_id, :question_text, :response_text, presence: true

  belongs_to :product_recommendation
end
