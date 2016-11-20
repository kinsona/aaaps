class User < ActiveRecord::Base
  validates :device_id, presence: true

  has_many :orders

  def content_views
    ContentView.where(device_id: self.device_id)
  end

  def orders
    Order.where(device_id: self.device_id)
  end

end
