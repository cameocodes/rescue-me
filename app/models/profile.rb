class Profile < ApplicationRecord
  belongs_to :user
  # has_many :photos
  # accepts_nested_attributes_for :photos 
  has_many :pets
  accepts_nested_attributes_for :pets

  validates :user_id, uniqueness: { message: 'can only have one profile.' }

  include ImageUploader::Attachment.new(:image)


  def image_display(args)
    if image_data
      image_url(args)
    else
      "http://placehold.it/150/4AAA94/000000"
    end
  end
end
