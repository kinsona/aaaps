class CreateContentViews < ActiveRecord::Migration
  def change
    create_table :content_views do |t|
      t.integer :user_id, null: false
      t.string :content_url

      t.timestamps null: false
    end
  end
end
