class Post < ActiveRecord::Base
	belongs_to :user
	validates :text, length: { maximum: 140 }, presence: true
	validates :user_id, presence: true
end