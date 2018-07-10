class Book < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :reviews

  # This method associates the attribute ":avatar" with a file attachment
  has_attached_file :book_img, styles: {
      book_index: "250x350>",
      book_show: "325x475>"
  }

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :book_img, :content_type => /\Aimage\/.*\Z/


end
