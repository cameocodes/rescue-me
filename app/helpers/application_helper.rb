module ApplicationHelper
    def random_hero_image
        images = ['0.jpeg',  '1.jpeg', '2.jpeg', '3.jpeg'
        ]
        images[rand(images.size)]
      end

end
