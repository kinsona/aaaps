class Order < ActiveRecord::Base
  belongs_to :user
  # state length == 2
  # zip length == 5
end
