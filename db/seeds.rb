Garden.destroy_all if Rails.env.development?

little_garden = Garden.create!(
  name: 'My Little Garden',
  banner_url: 'https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg'
)

Garden.create!(
  name: 'My Other Garden',
  banner_url: 'https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg'
)

puts "#{Garden.count} gardens created!"

Plant.create!(name: 'Agave',
              image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Agave_americana_R01.jpg/440px-Agave_americana_R01.jpg', garden: little_garden)
Plant.create!(name: 'Bamboo',
              image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Bamboo_forest.jpg/440px-Bamboo_forest.jpg', garden: little_garden)
Plant.create!(name: 'Sakura',
              image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/Prunus_speciosa_in_the_Jardin_des_Plantes_002.jpg/440px-Prunus_speciosa_in_the_Jardin_des_Plantes_002.jpg', garden: little_garden)
Plant.create!(name: 'Cryptomeria',
              image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8b/Taro-sugi_20111002.jpg/500px-Taro-sugi_20111002.jpg', garden: little_garden)
Plant.create!(name: 'Ginkgo biloba',
              image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/GINKGOBAUM-2.jpg/440px-GINKGOBAUM-2.jpg', garden: little_garden)

puts "#{Plant.count} plants created!"
