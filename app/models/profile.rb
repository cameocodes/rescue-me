class Profile < ApplicationRecord
  belongs_to :user
  has_many :photos
  accepts_nested_attributes_for :photos 

  include ImageUploader::Attachment.new(:image)


  def image_display(args)
    if image_data
      image_url(args)
    else
      "http://placehold.it/350/4AAA94/000000"
    end
  end
end
