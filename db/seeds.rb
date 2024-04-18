# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
Course.destroy_all
CourseModule.destroy_all
Lesson.destroy_all
Content.destroy_all
Enrollement.destroy_all
Grade.destroy_all

# role: 0 = student, 1=instructor, 2=administrator

10.times do
  User.create!(name: Faker::Name.unique.name , role: rand(0..2))
end

# users = User.all

students = User.where(role: 0).to_a
studentsNbr = students.length()-1

instructors = User.where(role: 1).to_a
instructorsNbr = instructors.length()-1

10.times do
  Course.create!(title: Faker::Educator.unique.course_name, description: Faker::Lorem.paragraph(sentence_count: 2), user: instructors[rand(0..instructorsNbr)])
# aker::Science.science
end
courses = Course.all
20.times do
  CourseModule.create!(title: Faker::Science.unique.science, description: Faker::Lorem.paragraph(sentence_count: 2), course: courses[rand(0..9)])
end

course_modules = CourseModule.all

20.times do
  Lesson.create!(title: Faker::Science.modifier, content: Faker::Lorem.paragraph(sentence_count: 2), course_module: course_modules[rand(0..19)])
end

lessons = Lesson.all

20.times do
  Content.create!(title: Faker::IndustrySegments.sub_sector, file_type: %w[video texte tutorial presentation].sample , file_path: Faker::Internet.url(host: 'example.com'), lesson: lessons[rand(0..19)])
end

20.times do

  Enrollement.create(user: students[rand(0..studentsNbr)], course: courses[rand(0..9)])
end

20.times do
  Grade.create(user: students[rand(0..studentsNbr)], course: courses[rand(0..9)], grade: rand(0..100))
end
