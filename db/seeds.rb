# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create!(
  emial: "user@user.com",
  password: "password",
  first_name: "John",
  last_name: "Wick"
)

job = JobApplication.create!(
  user: user,
  title: "Frontend Engineer",
  company_name: "Backbase",
  description: "As a Frontend Engineer you'll be using Angular and TypeScript to create the best web interfaces, administration panels, and omni-channel user experiences.

We love clean, testable, and maintainable code that is cross-browser compatible. You will be part of a multidisciplinary team that is end-to-end responsible for analysis, design, implementation and delivery of production-ready software.

We like to keep work interesting and we encourage our developers to develop their personal strengths."
)

interview = Interview.create!(
  job_application_id: job,
  start_date: "2021-11-24 14:00:00",
  end_date: "2021-11-24 15:00:00"
)

Contact.create!(
  interview_id: interview,
  first_name: "Viggo",
  last_name: "Tarasov",
  position: "Mob Boss",
  email: "viggoTheBoss@hotmail.com"
)
