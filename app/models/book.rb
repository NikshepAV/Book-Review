class Book < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :reviews

  # This method associates the attribute ":avatar" with a file attachment
  has_attached_file :book_img, styles: {
      thumb: '100x100>',
      square: '200x200#',
      medium: '300x300>'
  }

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :book_img, :content_type => /\Aimage\/.*\Z/

end
