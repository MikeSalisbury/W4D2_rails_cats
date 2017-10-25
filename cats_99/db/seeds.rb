# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
cat1 = Cat.create!(birth_date: '2015-10-31', color: "green", name: 'Patty', sex: 'M', description: 'Ambiguous')
cat2 = Cat.create!(birth_date: '2015-9-25', color: "red", name: 'Fatty', sex: 'F', description: 'Less Ambiguous')
cat3 = Cat.create!(birth_date: '2015-8-25', color: "blue", name: 'Catty', sex: 'F', description: 'LessLess Ambiguous')
cat4 = Cat.create!(birth_date: '2015-7-25', color: "yellow", name: 'Natty', sex: 'F', description: 'LessLessLess Ambiguous')
cat5 = Cat.create!(birth_date: '2015-6-25', color: "purple", name: 'Datty', sex: 'M', description: 'LessLessLessLess Ambiguous')


cr1 = CatRentalRequest.create!(cat_id: 1, start_date:'2017-8-25', end_date: '2017-9-25', status: 'PENDING')
cr2 = CatRentalRequest.create!(cat_id: 2, start_date:'2017-7-27', end_date: '2017-10-03', status: 'PENDING')
cr3 = CatRentalRequest.create!(cat_id: 3, start_date:'2017-9-22', end_date: '2017-9-29', status: 'PENDING')
cr4 = CatRentalRequest.create!(cat_id: 1, start_date:'2017-9-26', end_date: '2017-9-29', status: 'PENDING')
