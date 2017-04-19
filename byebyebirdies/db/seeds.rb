# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

bird1 =  Bird.create(birth_date: "2017/04/17", color: 'Red', name: 'Ranelle', sex: 'M', description: 'chirp chirp modafucka')
bird2 =  Bird.create(birth_date: "2014/02/14", color: 'Green', name: 'QWERTY', sex: 'M', description: 'I AM THE MOST BEAUTIFULEST BURD EVER IN DA MULTIVERSE')
bird3 =  Bird.create(birth_date: "1994/10/26", color: 'Yellow', name: 'Sunny', sex: 'M', description: 'YOU PUTTING ME ON THE SPOT RIGHT NOW')
bird4 =  Bird.create(birth_date: "1991/05/04", color: 'Fuscia', name: 'Winber', sex: 'M', description: '*breakdances*')

rental1 = BirdRentalRequest.create(bird_id: 4, start_date: '2017/4/20', end_date: '2017/4/22')
rental2 = BirdRentalRequest.create(bird_id: 4, start_date: '2017/4/24', end_date: '2017/4/26')
rental3 = BirdRentalRequest.create(bird_id: 4, start_date: '2017/4/28', end_date: '2017/4/29', status: "APPROVED")
