class User < ActiveRecord::Base
  has_many :content_views
  has_many :orders
end
