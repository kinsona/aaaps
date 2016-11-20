class User < ActiveRecord::Base
  validates :device_id, presence: true

  has_many :content_views
  has_many :orders
end
