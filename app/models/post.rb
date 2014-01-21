class Post < ActiveRecord::Base

    

	belongs_to :user

	default_scope -> { order('created_at DESC') }

	validates :title, presence: true, length: { maximum: 140 }
	validates :date,  length: { maximum: 140 }
	validates :content, presence: true
	validates :user_id, presence: true

	self.per_page = 5
end
