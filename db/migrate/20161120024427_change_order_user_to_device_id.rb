class ChangeOrderUserToDeviceId < ActiveRecord::Migration
  def change
    add_column :orders, :device_id, :string
    remove_column :orders, :user_id
  end
end
