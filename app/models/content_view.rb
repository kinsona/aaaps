class ContentView < ActiveRecord::Base
  validates :device_id, :content_url, presence: true

  def user
    User.where(device_id: self.device_id).first
  end

end
