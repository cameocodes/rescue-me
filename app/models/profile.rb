class Profile < ApplicationRecord
  belongs_to :user
  has_many :pets
  accepts_nested_attributes_for :pets

  
  validates(
    :state,
    :suburb,
    :postcode,
    presence: true
  )

  geocoded_by :suburb_location
  after_validation :geocode

  include ImageUploader::Attachment.new(:image)

  def suburb_location
    "#{suburb}, #{state}, #{postcode}"
  end

  def image_display(args)
    if image_data
      image_url(args)
    else
      "http://placehold.it/150/4AAA94/000000"
    end
  end

  def street_address
    "#{suburb}, #{state} #{postcode}"
  end
end
