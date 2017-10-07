# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Todo.destroy_all

Todo.create(title:'Due yesterday', complete: false, owner:'chip.irek@gmail.com', due_date: Date.today-1)
Todo.create(title:'Due today', complete: false, owner:'chip.irek@gmail.com', due_date: Date.today)
Todo.create(title:'walk the dog', complete: true, owner:'chip.irek@gmail.com', due_date: Date.today)