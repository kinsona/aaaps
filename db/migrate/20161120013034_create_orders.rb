class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id, null: false
      t.string :recipient_name, null: false
      t.string :address_line_1, null: false
      t.string :address_line_2, null: false
      t.string :city, null: false
      t.string :state_abbreviation, null: false
      t.string :zip_code, null: false

      t.timestamps null: false
    end
  end
end
