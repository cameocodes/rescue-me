module ApplicationHelper
    def random_hero_image
        images = ['https://images.unsplash.com/photo-1444212477490-ca407925329e?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=86d24240ca6b1df611e98ed6bd7a1efc&auto=format&fit=crop&w=1100&q=80',  'https://images.unsplash.com/photo-1522438823541-d077e0a978e1?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=9888e8cc610ebdc340f17da7f7cb87ca&auto=format&fit=crop&w=1051&q=80', 'https://images.unsplash.com/photo-1507510566599-c36ce28676a6?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a4b17e6f4f631ebdfd59b679a3fd5b66&auto=format&fit=crop&w=1171&q=80', 'https://images.unsplash.com/photo-1505503076934-b9b847ee95ad?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=69ef6018f093728a7b2952c8f0773831&auto=format&fit=crop&w=1050&q=80', 'https://images.unsplash.com/photo-1517451330947-7809dead78d5?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=e63b07fb95899a6cb247964cbf80e401&auto=format&fit=crop&w=1050&q=80', 'https://images.unsplash.com/photo-1508710599415-734cc9b287fb?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=910717d33a9d13b890c1fb1e3130f186&auto=format&fit=crop&w=1050&q=80', 'https://images.unsplash.com/photo-1475260151973-4b51c9c9af2d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=3fefd34315a2c77642b37017dd6fcd74&auto=format&fit=crop&w=1052&q=80'
        ]
        images[rand(images.size)]
      end

end
