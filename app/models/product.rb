class Product < ApplicationRecord

  validates :category_id, presence: { message: "所属分类不能为空"}
  validates :title, presence: { message: "名称不能为空" }
  validates :title, uniqueness: { message: "名称不能重复" }
  validates :author, presence: { message: "作者不能为空" }
  validates :amount, presence: { message: "库存不能为空" }
  validates :amount, numericality: { only_integer: true,
    message: "库存必须为整数"},
    if: proc { |product| !product.amount.blank? }
  validates :price, presence: { message: "价格不能为空" }
  validates :price, numericality: { message: "价格必须为数字" },
    if: proc { |product| !product.price.blank? }
  validates :description, presence: { message: "描述不能为空" }

  belongs_to :category
  has_many :photos, -> { order(weight: 'desc') },
    dependent: :destroy
  has_one :main_photo, -> { order(weight: 'desc') },
    class_name: :Photo
  has_many :comments
  acts_as_votable

  private

  def set_default_attrs
    self.uuid = RandomCode.generate_product_uuid
  end

end
