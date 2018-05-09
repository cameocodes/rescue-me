class Pet < ApplicationRecord
  belongs_to :user

  include ImageUploader::Attachment.new(:image)

  validates :suburb, presence: true
  validates :state, presence: true

  geocoded_by :suburb_state   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates

  def self.search_pets(search)
    where("LOWER(breed) LIKE ?", "%#{search.downcase}%").or(where("LOWER(species) LIKE ?", "%#{search.downcase}%"))
  end

  def image_display(args)
    if image_data
      image_url(args)
    else
      "http://placehold.it/150/4AAA94/000000"
    end
  end

  def suburb_state
    "#{suburb}, #{state}"
  end

end
