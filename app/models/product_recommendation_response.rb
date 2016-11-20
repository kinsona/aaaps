class ProductRecommendationResponse < ActiveRecord::Base
  validates :question_text, :response_text, presence: true

  belongs_to :product_recommendation
end
