class Test < ApplicationRecord
  has_many_attached :uploads # one-to-many relationship
  validates :name, presence: true
  # this will allow all the image types
  validates :uploads, file_content_type: { allow: /^image\/.*/ }
  # if there is attachment
  validate :is_there_attached
  
  def thumbnail
    require "mini_magick"
    image = MiniMagick::Image.open(url_for(uploads))
    image.resize "200x200"
  end
  
  private 
  def is_there_attached
    if !uploads.attached?
      errors.add(:uploads, 'required.')
    end
  end
end
