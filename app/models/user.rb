class User < ActiveRecord::Base
	has_many :sender_cookie_batches, class_name: "CookieBatch", foreign_key: "sender_id" 
	has_many :recipient_cookie_batches, class_name: "CookieBatch", foreign_key: "recipient_id"
end
