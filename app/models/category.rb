class Category < ApplicationRecord

  validates :name, presence: { message: "名称不能为空" }
  validates :name, uniqueness: { message: "名称不能重复" }

  has_many :products, dependent: :destroy 

end
