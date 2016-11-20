class CreateProductRecommendationResponses < ActiveRecord::Migration
  def change
    create_table :product_recommendation_responses do |t|
      t.integer :product_recommendation_id, null: false
      t.string :question_text, null: false
      t.string :response_text, null: false
      t.timestamps null: false
    end
  end
end