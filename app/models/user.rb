class User < ActiveRecord::Base
	has_many :microposts, dependent: :destroy
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, 
	default_url: "/assets/user_default.png"
	has_secure_password

	before_save { self.email = email.downcase }
	
	validates :name, presence:true, length: { maximum: 50 } 
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence:true,length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX },
	uniqueness: {casesensitive: false}
	validates :password, length: { minimum: 6 }
	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

end
