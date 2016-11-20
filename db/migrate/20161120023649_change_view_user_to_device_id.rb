class ChangeViewUserToDeviceId < ActiveRecord::Migration
  def change
    add_column :content_views, :device_id, :string
    remove_column :content_views, :user_id
  end
end
