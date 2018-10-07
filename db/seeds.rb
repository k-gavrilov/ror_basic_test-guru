# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = User.create!([
  {login: "kost123", first_name: "Konstantin", last_name: "Gavrilov", role: "Author"},
  {login: "vit", first_name: "Vitaly", last_name: "Ivanov", role: "Student"}
])
categories = Category.create!([{title: "Front-end"}, {title: "Back-end"}, {title: "Bash"}])
tests = Test.create!([
  {title: "HTML Basic", category: categories[0], author: users[0]},
  {title: "HTML Medium", category: categories[0], level: 12, author: users[0]},
  {title: "HTML Advanced", category: categories[0], level: 2, author: users[0]},
  {title: "Rails Basics", category: categories[1], level: 1, author: users[0]},
  {title: "Basic Navigation", category: categories[2], level: 1, author: users[0]}
])
questions = Question.create!([
  {body: "Which tag usually contains meta information?", test: tests[0]},
  {body: "Which tag contains the page content?", test: tests[0]},
  {body: "Which tag denotes a paragraph?", test: tests[1]},
  {body: "Which tag emdeds a movie?", test: tests[2]},
  {body: "Which command generates a controller class Apple", test: tests[3]},
  {body: "Which command list detailed information about files in the passed directory",
    test: tests[4]}
])
Answer.create!([
  {body: "head", question: questions[0], correct: true},
  {body: "body", question: questions[0]},
  {body: "h1", question: questions[0]},
  {body: "br", question: questions[0]},
  {body: "head", question: questions[1]},
  {body: "body", question: questions[1], correct: true},
  {body: "h1", question: questions[1]},
  {body: "br", question: questions[1]},
  {body: "head", question: questions[2]},
  {body: "body", question: questions[2]},
  {body: "p", question: questions[2], correct: true},
  {body: "movie", question: questions[2]},
  {body: "head", question: questions[3]},
  {body: "body", question: questions[3]},
  {body: "h1", question: questions[3]},
  {body: "movie", question: questions[3], correct: true},
  {body: "rails g model apple", question: questions[4]},
  {body: "rails g migration super_apple", question: questions[4]},
  {body: "reails g controller Apple", question: questions[4], correct: true},
  {body: "rails g apple_controller", question: questions[4]},
  {body: "ls -A", question: questions[5]},
  {body: "ls -l", question: questions[5], correct: true},
  {body: "cd", question: questions[5]},
  {body: "sudo", question: questions[5]},
])
TestPassing.create!([
  {user: users[1], test: tests[0]},
  {user: users[1], test: tests[1]},
  {user: users[1], test: tests[2]},
  {user: users[1], test: tests[3]}
])
