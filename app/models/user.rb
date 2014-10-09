class User < ActiveRecord::Base
  attr_accessible :user_id, :email, :session_token
  def self.create_user!(params)
     hash = params
     hash[:session_token] = SecureRandom.base64
     return self.create!(hash)
  end
end
