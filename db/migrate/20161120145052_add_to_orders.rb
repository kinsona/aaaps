class AddToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :sent_at, :datetime
    add_column :orders, :follow_up_scheduled_at, :datetime
  end
end
