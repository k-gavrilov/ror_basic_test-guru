# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.create([{title: 'Front-end'}, {title: 'Back-end'}, {title: 'Bash'}])
# front_end_cat = Category.find_by(title: 'Front-end').id
# back_end_cat = Category.find_by(title: 'Back-end').id
# bash_cat = Category.find_by(title: 'Bash').id
Test.create([
                      {title: 'HTML Basic', category_id: 1},
                      {title: 'HTML Medium', category_id: 1, level: 1},
                      {title: 'HTML Advanced', category_id: 1, level: 2},
                      {title: 'Rails Basics', category_id: 2, level: 1},
                      {title: 'Basic Navigation', category_id: 3, level: 1}
                      ])
