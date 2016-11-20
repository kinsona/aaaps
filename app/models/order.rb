class Order < ActiveRecord::Base
  validates :device_id, :recipient_name, :address_line_1, :address_line_2, :city, :state_abbreviation, :zip_code, presence: true
  validates :state_abbreviation, length: { is: 2 }
  validates :zip_code, length: { is: 5 }

  before_create :schedule_follow_up
  
  def user
    User.where(device_id: self.device_id).first
  end

  def schedule_follow_up
    self.follow_up_scheduled_at = Time.now + 30.days
  end
end
