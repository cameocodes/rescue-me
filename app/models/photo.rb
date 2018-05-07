class Photo < ApplicationRecord
  belongs_to :profile

  include ImageUploader::Attachment.new(:image)
end
