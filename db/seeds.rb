# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database"

User.destroy_all
JobApplication.destroy_all
Interview.destroy_all
Contact.destroy_all

puts "Creating user"

user = User.create!(
  email: "user@user.com",
  password: "password",
  first_name: "John",
  last_name: "Wick"
)

puts "Creating Job"

job = JobApplication.create!(
  user: user,
  title: "Frontend Engineer",
  company_name: "Backbase",
  description: "As a Frontend Engineer you'll be using Angular and TypeScript to create the best web interfaces, administration panels, and omni-channel user experiences.

  We love clean, testable, and maintainable code that is cross-browser compatible. You will be part of a multidisciplinary team that is end-to-end responsible for analysis, design, implementation and delivery of production-ready software.

  We like to keep work interesting and we encourage our developers to develop their personal strengths."
)

puts "Creating interview"

interview = Interview.create!(
  job_application: job,
  start_date: "2021-11-24 14:00:00",
  end_time: "2021-11-24 15:00:00"
)

puts "Creating contact"

Contact.create!(
  interview: interview,
  first_name: "Viggo",
  last_name: "Tarasov",
  position: "Mob Boss",
  email: "viggoTheBoss@hotmail.com"
)

puts "Database ready"
