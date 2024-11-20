puts 'Cleaning the database...'
Restaurant.destroy_all
puts 'Database cleaned!'

# 2. Create the instances 🏗️
puts 'Creating restaurants...'

Restaurant.create!(
  name: 'Rong He',
  address: 'Rua da Glória, 622, Liberdade, São Paulo',
  phone_number: '(11) 3275-1986',
  category: 'chinese'
)
Restaurant.create!(
  name: 'Nino Cucina',
  address: 'Rua Jerônimo da Veiga, 30, Itaim Bibi, São Paulo',
  phone_number: '(11) 3368-6863',
  category: 'italian'
)
Restaurant.create!(
  name: 'Jun Sakamoto',
  address: 'Rua Lisboa, 55, Pinheiros, São Paulo',
  phone_number: '(11) 3088-6019',
  category: 'japanese'
)
Restaurant.create!(
  name: 'La Casserole',
  address: 'Largo do Arouche, 346, República, São Paulo',
  phone_number: '(11) 3331-6283',
  category: 'french'
)
Restaurant.create!(
  name: 'Belga Corner',
  address: 'Rua dos Três Irmãos, 319, Vila Progredior, São Paulo',
  phone_number: '(11) 3721-5377',
  category: 'belgian'
)

puts "#{Restaurant.count} restaurants created!"

# 3. Display a message 🎉
puts 'All done!'
