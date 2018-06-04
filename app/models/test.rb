class Test < ApplicationRecord
  has_many_attached :uploads # one-to-many relationship
  validates :name, presence: true
  # this will allow all the image types
  validates :uploads, file_content_type: { allow: /^image\/.*/ }
  # if there is attachment
  validate :is_there_attached
  
  # https://www.youtube.com/watch?v=rxx4mY4WGhY&lc=z22ztdrwcx3hu5t10acdp43azluxdja2uoholmvuegdw03c010c.1528064220503605
  # resizing the better way, instead of resizing in the views
  def thumbnail(input)
    return self.uploads[input].variant(resize: '700x700').processed
  end
  
  
  private 
  def is_there_attached
    if !uploads.attached?
      errors.add(:uploads, 'required.')
    end
  end
end
