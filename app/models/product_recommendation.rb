class ProductRecommendation < ActiveRecord::Base
  validates :device_id, presence: true

  has_many :product_recommendation_responses
  accepts_nested_attributes_for :product_recommendation_responses

  def user
    User.where(device_id: self.device_id).first
  end

  def generate
    {recommended_product: "This is your recommended product"}
  end
end
