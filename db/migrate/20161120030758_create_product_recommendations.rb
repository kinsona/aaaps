class CreateProductRecommendations < ActiveRecord::Migration
  def change
    create_table :product_recommendations do |t|
      t.string :device_id, null: false
      t.timestamps null: false
    end
  end
end