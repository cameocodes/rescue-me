class Pet < ApplicationRecord
  belongs_to :user

  include ImageUploader::Attachment.new(:image)

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

end
