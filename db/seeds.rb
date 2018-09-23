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
tests = Test.create([
  {title: "HTML Basic", category_id: categories[0].id, author_id: users[0]},
  {title: "HTML Medium", category_id: categories[0].id, level: 1, author_id: users[0].id},
  {title: "HTML Advanced", category_id: categories[0].id, level: 2, author_id: users[0].id},
  {title: "Rails Basics", category_id: categories[1].id, level: 1, author_id: users[0].id},
  {title: "Basic Navigation", category_id: categories[2].id, level: 1, author_id: users[0].id}
])
questions = Question.create!([
  {body: "Which tag usually contains meta information?", test_id: tests[0].id},
  {body: "Which tag contains the page content?", test_id: tests[0].id},
  {body: "Which tag denotes a paragraph?", test_id: tests[1].id},
  {body: "Which tag emdeds a movie?", test_id: tests[2].id},
  {body: "Which command generates a controller class Apple", test_id: tests[3].id},
  {body: "Which command list detailed information about files in the passed directory",
    test_id: tests[4].id}
])
Answer.create!([
  {body: "head", question_id: questions[0].id, correct: true},
  {body: "body", question_id: questions[0].id},
  {body: "h1", question_id: questions[0].id},
  {body: "br", question_id: questions[0].id},
  {body: "head", question_id: questions[1].id},
  {body: "body", question_id: questions[1].id, correct: true},
  {body: "h1", question_id: questions[1].id},
  {body: "br", question_id: questions[1].id},
  {body: "head", question_id: questions[2].id},
  {body: "body", question_id: questions[2].id},
  {body: "p", question_id: questions[2].id, correct: true},
  {body: "movie", question_id: questions[2].id},
  {body: "head", question_id: questions[3].id},
  {body: "body", question_id: questions[3].id},
  {body: "h1", question_id: questions[3].id},
  {body: "movie", question_id: questions[3].id, correct: true},
  {body: "rails g model apple", question_id: questions[4].id},
  {body: "rails g migration super_apple", question_id: questions[4].id},
  {body: "reails g controller Apple", question_id: questions[4].id, correct: true},
  {body: "rails g apple_controller", question_id: questions[4].id},
  {body: "ls -A", question_id: questions[5].id},
  {body: "ls -l", question_id: questions[5].id, correct: true},
  {body: "cd", question_id: questions[5].id},
  {body: "sudo", question_id: questions[5].id},
])
TestsUser.create!([
  {user_id: users[1].id, test_id: tests[0].id},
  {user_id: users[1].id, test_id: tests[1].id},
  {user_id: users[1].id, test_id: tests[2].id},
  {user_id: users[1].id, test_id: tests[3].id}
])
