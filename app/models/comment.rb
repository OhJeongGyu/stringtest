class Comment < ActiveRecord::Base
	belongs_to :post
	validates :content, presence: {message: "댓글이 비었습니다."}

end
