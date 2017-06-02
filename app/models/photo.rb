class Photo < ApplicationRecord

  belongs_to :product

  has_attached_file :image, styles: {
    small: '60x60>',
    middle: '200x200>',
    middlem: '410x410>',
    big: "960x"
  }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates_attachment_size :image, in: 0..5.megabytes

end
