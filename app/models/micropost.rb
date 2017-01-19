class Micropost < ActiveRecord::Base
  belongs_to :user
  has_attached_file :post_image, styles: { medium: "300x300>", thumb: "100x100>" }, 
	default_url: "/assets/user_default.png"

  default_scope -> { order(created_at: :desc) }




  validates :user_id, presence: true
  validates :title, presence: true
  validates :content, presence: true, length: { minimum: 140 }
  validates_attachment_content_type :post_image, content_type: /\Aimage\/.*\z/
end
