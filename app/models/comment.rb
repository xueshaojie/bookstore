class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :product
  validates :body, presence: { message: "内容不能为空"}
end
