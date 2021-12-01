# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

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
  level: "Entry level",
  company_name: "Backbase",
  comp_logo: "https://media-exp1.licdn.com/dms/image/C4E0BAQEhtFiv-W0pSQ/company-logo_100_100/0/1632234966764?e=1646265600&v=beta&t=xR3q_duA28C9ueiF_2_LsjRcBWRqt544cotiSViYLhI",
  description: "As a Frontend Engineer you'll be using Angular and TypeScript to create the best web interfaces, administration panels, and omni-channel user experiences.

  We love clean, testable, and maintainable code that is cross-browser compatible. You will be part of a multidisciplinary team that is end-to-end responsible for analysis, design, implementation and delivery of production-ready software.

  We like to keep work interesting and we encourage our developers to develop their personal strengths.",
  status: "Pending",
  notes: "Experience with SASS and HTML;\n
          Expert knowledge, confidence, and efficiency in debugging issues;\n
          Ability to find and evaluate multiple solutions to a given problem and apply working fixes",
  link: "https://www.linkedin.com/jobs/view/2669328636/?alternateChannel=search&refId=k5h%2BOrkeVFjfnJp8T%2B4elA%3D%3D&trackingId=3RX0E5imcslCLVAQ0v8BGw%3D%3D",
  address: "Jacob Bontiusplaats 9, Amsterdam, NH 1018LL, NL",
  applied: "2020-09-14 18:00:00"
)

job2 = JobApplication.create!(
  user: user,
  title: "Full Stack Engineer",
  level: "Senior",
  company_name: "CVmaker",
  comp_logo: "https://media-exp1.licdn.com/dms/image/C4D0BAQHPF2PM1mUYog/company-logo_100_100/0/1585298423716?e=1646265600&v=beta&t=VAsB0A2bfUhwbcKRkyfhqTvRHDC67VEqbW7q4o5JD9E",
  description: "We’re looking for an Senior JavaScript (ReactJS) front-/backend developer to turn visual designs into beautiful and well performing applications. You'll work in a small team of passionated developers and will be co-responsible for good performing and well- documented code. Knowledge about making applications compatible with all common browsers for different devices and resolutions. You're fluent in understanding and writing HTML, CSS and JavaScript in the best performing way.",
  status: "Pending",
  notes: "A big passion for web development;\n
          Expert knowledge, confidence, and efficiency in debugging issues;\n
          Experience with Git(hub). CI/CD knowledge is a plus",
  link: "https://www.linkedin.com/jobs/view/2791724535/?alternateChannel=smljob&eBP=CwEAAAF9TOBpRQkjVp8E7zpi3VMnAsa0giprRAnTWhGepwy8__MxlFNL6xdxf5haUe69FgEH6VZ5DWkpbq0aRIdf6xQNxETjnb4SpC5FWQESCxRzjpi3UDZerh5hXFZikLb5vEcyp-7F9EXNSbN02Gg-oPVt7WxRj_YSEek-pTfSvus3XhcbWG_jrS5xMOC2Xb4wyr0CScFYhcktLjBGh-UsJSshScX6xrI8CIzt1jy1_WcGf09xhGO8MC52cx9YmAC7l_NCnM7K--a0Rdtxm5F05lTUAHk4mJdIEkYiNNnXN9FSgo3a0lrnfgmVvMnKJAVmNiXThw-qtqgD-vVcpU7eSIqj_71-j83IBNwHs2M1wGy6gDK-Cozz0oGQI8h0efrorRbSeHg1vKp35KPvPS49&refId=2prPSJZ7K4%2FWoAwqBgriCw%3D%3D&trackingId=RqyAA4X%2BTuR0RhVLCiZChQ%3D%3D",
  address: "Herengracht 458, Amsterdam, North Holland 1017 CA, NL",
  applied: "2020-09-14 18:00:00"
)

job3 = JobApplication.create!(
  user: user,
  title: "Frontend Developer",
  company_name: "Hadrian",
  comp_logo: "https://media-exp1.licdn.com/dms/image/C4D0BAQENV4fe-dpr_g/company-logo_100_100/0/1628354830626?e=1646265600&v=beta&t=LEFqycNthEdf5g__hMnMjnqUvAWECig92nxnE64awfk",
  description: "We don't have any hard requirements, as we welcome talented people from all walks of life. We’re looking for fast-learners who are excited about our mission and keen to get stuck in.",
  status: "In process",
  link: "https://www.linkedin.com/jobs/view/2791524467/?alternateChannel=search&refId=k5h%2BOrkeVFjfnJp8T%2B4elA%3D%3D&trackingId=2biBtOdR3Olr3olKxkBJ4Q%3D%3D",
  address: "Singel 5421017 AZ Amsterdam",
  remote: true,
  notes: "HTML5, Javascript and CSS;\n
          React;\n
          Styled-components and SCSS",
  applied: "2020-09-14 18:00:00",
  favorite: true
)

job4 = JobApplication.create!(
  user: user,
  title: "Web Developer",
  company_name: "Avanade",
  comp_logo: "https://media-exp1.licdn.com/dms/image/C4E0BAQF3iS1VURmDaw/company-logo_100_100/0/1625863151506?e=1646265600&v=beta&t=Cnzvh0oX-QGpcaWympQz82jQdQRJp8z9V4crcGTpUC0",
  level: "Entry",
  description: "As a Web-Developer, with a hands-on mentality, you are responsible for the continuity and the future of our web applications at our enterprise clients. These applications must be linked to the current IT-landscape within the organizations and built through TypeScript, Angular and/or React. With your current experience you know that proper structuring of code and data management are just as important.",
  link: "https://www.linkedin.com/jobs/view/2798853476/?alternateChannel=search&refId=0Y6i8OyIzRoOZ4zckaZMTg%3D%3D&trackingId=OznA2Q9dkNaFuAendoAhtw%3D%3D",
  status: "Pending",
  notes: "Angular, React, jQuery, AngularJS, HTML5 and CSS3 get your blood flowing faster\n
          You don't hide your enthusiasm for Bootstrap, ASP.NET Core, and TypeScript either",
  address: "Seattle, Washington",
  applied: "2020-10-14 18:00:00",
  remote: true
)

job5 = JobApplication.create!(
  user: user,
  title: "Frontend  Developer",
  company_name: "Media.Monks",
  comp_logo: "https://media-exp1.licdn.com/dms/image/C560BAQG7XL5SwSXyqw/company-logo_100_100/0/1629486853188?e=1646265600&v=beta&t=lVx28JLbgXa1ZOWT3XDWwVmAQtvCG4OINcMUUrpoSqA",
  level: "Entry",
  description: "In the Frontend Developer position, you’ll be responsible for crafting all our high end digital work ranging from the latest campaigns to the biggest platforms. This is a role where you’ll partner with our lovely clients and project managers, a big team of other frontend developers and our creative, animation and WebGL team to make sure we get the best out of you and the projects. Additionally, our ideal candidate is a fast and flexible go-getter who jumps on new opportunities.",
  link: "https://www.linkedin.com/jobs/view/2727471435/?alternateChannel=search&refId=k5h%2BOrkeVFjfnJp8T%2B4elA%3D%3D&trackingId=58V7IrsxC3DPeoU9i8hMww%3D%3D",
  status: "In process",
  notes: "You know your way around libraries and languages such as React, Vue, Angular, ESNext, TypeScript, Webpack and GSAP;\n
          You have great attention to detail in everything you do",
  address: "Hilversum, North Holland, Netherlands",
  applied: "2020-10-14 18:00:00"

)

job6 = JobApplication.create!(
  user: user,
  title: "Front End Developer - Accommodations Tech",
  company_name: "Booking.com",
  comp_logo: "https://media-exp1.licdn.com/dms/image/C4E0BAQEgzF5azm3fNA/company-logo_100_100/0/1628510256914?e=1646265600&v=beta&t=qdzzdYuPQ02ozTantht-8tGltaLCZUKhotQec6cVeBY",
  level: "Entry",
  description: "The Accommodations Technology team is responsible for the design, delivery and reliability of services used by millions of customers and partners on the Web, via mobile and through our extensive APIs. With 28 million places to stay listed on our platform, we work hard to develop products that make it easier for travellers to find the best place to stay in destinations across the globe – in 42 languages and across dozens of currencies.",
  link: "https://www.linkedin.com/jobs/view/2779383363/?alternateChannel=search&refId=k5h%2BOrkeVFjfnJp8T%2B4elA%3D%3D&trackingId=bC8Wco9R2466Ba06DHnVZA%3D%3D&trk=d_flagship3_search_srp_jobs",
  status: "Pending",
  address: "Amsterdam, North Holland, Netherlands",
  applied: "2020-10-14 18:00:00"

)

job7 = JobApplication.create!(
  user: user,
  title: "Backend Developer - Messaging",
  company_name: "Booking.com",
  comp_logo: "https://media-exp1.licdn.com/dms/image/C4E0BAQEgzF5azm3fNA/company-logo_100_100/0/1628510256914?e=1646265600&v=beta&t=qdzzdYuPQ02ozTantht-8tGltaLCZUKhotQec6cVeBY",
  level: "Entry",
  description: "The Marketing Messaging team is looking for an experienced backend developer to help us on a mission to increase value for our customers via personalized communication via a right channel, e.g. email, push notifications, etc., at the right time with the right message. This is an opportunity to make a large impact on millions of our subscribers on a daily basis as well as innovate our infrastructure while working with great people in our team. B.responsible",
  link: "https://www.linkedin.com/jobs/view/2773845008/?alternateChannel=search&eBP=CwEAAAF9TS04ug9_p6mP-lfnrAzYfulNPpAB02ifSC5r-oSnCBMH9iiuwyRitmsBlZJ3wvS-AVq31ZfHjzSDQnRk7hr6z4eW1eWrNRCh5OUEtZGGvIsNTsR5IMr7HzaQnr_12v5yQCdHH3srgeTBF7TPx5CsKxno2syizf-_sAVjg10WeDAeZ0NErsDt-UIAcFhMpAtAYtfep6MUKg7G3_FmH23Ch5S2k05CGE5kfSlMRQp-uRZTWwNs_gHeSPLElir6wwKaDmQAmjqUSi90Is1t0s8InrABb5cEwoJhqMCoC2299sMZU8hku9qrQoe0LVHovLKj8m1R4hHeA4jd2_FG5HzWNxbCTOwGak8Uh0QpGNueKXrB03ERIyWY15WYI-8&recommendedFlavor=ACTIVELY_HIRING_COMPANY&refId=kLsSjoq%2FMHBqezlpR6dIiA%3D%3D&trackingId=OOTXJSF9YbzOAnLMp11RyA%3D%3D&trk=flagship3_search_srp_jobs",
  status: "Rejected",
  address: "Amsterdam, North Holland, Netherlands",
  applied: "2020-11-14 18:00:00"

)

job8 = JobApplication.create!(
  user: user,
  title: "Backend Developer focused on Go",
  company_name: "Bloomreach",
  comp_logo: "https://media-exp1.licdn.com/dms/image/C560BAQGkRJWk0eX3Ug/company-logo_100_100/0/1631655277891?e=1646265600&v=beta&t=LdpVFid617GAmlMRBH7YObijXq6HWqUKBanB0K9V_t0",
  level: "Entry",
  description: "You will code and operate our next generation platform, Bloomreach Cloud (BRC). BRC is written in Go on top of Kubernetes and AWS. Your days will be filled working with concepts such as: Kubernetes, Go, AWS, agile, scalability, real-time monitoring, open source, automation, gitops, CI/CD. You will be part of a small, dedicated and cross-functional team where you will have a large and diverse set of responsibilities to support Bloomreach, its customers and its partners.",
  link: "https://www.linkedin.com/jobs/view/2771409107/?alternateChannel=search&refId=kLsSjoq%2FMHBqezlpR6dIiA%3D%3D&trackingId=IL9G9Bg9O33ct9qptneDYQ%3D%3D",
  status: "Rejected",
  address: "Amsterdam, Netherlands",
  applied: "2020-11-14 18:00:00",
  remote: true
)

job9 = JobApplication.create!(
  user: user,
  title: "Frontend Developer",
  company_name: "SimpledCard",
  comp_logo: "https://media-exp1.licdn.com/dms/image/C4D0BAQFBPgeeMUtURA/company-logo_100_100/0/1519883904303?e=1646265600&v=beta&t=AdIgYLArkoCVV2_20sDi7sJXu1dwL_2ORsLpDcdGx0o",
  description: "We are looking for someone for whom software development is a passion, not just a job. You not only write code, but you also craft and run a product. You are open to change and have the ability to learn and cooperate with others. You are pragmatic and proactive, and you do what needs to be done: building and running the system. Last but not least, you understand the importance of automation in testing, tooling, and operations.",
  link: "https://www.linkedin.com/jobs/view/2735127563/?alternateChannel=search&refId=0Y6i8OyIzRoOZ4zckaZMTg%3D%3D&trackingId=OccagE%2BqAXo7CpLA9Uv6AQ%3D%3D&trk=d_flagship3_search_srp_jobs",
  status: "In process",
  address: "Amsterdam, North Holland, Netherlands",
  applied: "2020-10-14 18:00:00",
  favorite: true
)

job10 = JobApplication.create!(
  user: user,
  title: "Frontend Developer",
  company_name: "Capte",
  comp_logo: "https://media-exp1.licdn.com/dms/image/C4D0BAQG6YYbyAbYqsQ/company-logo_100_100/0/1631878842464?e=1646265600&v=beta&t=q_sQrBNts-eiI0CXGl3yBnY15Po5EeuC1vJumR7pAL0",
  description: "Work in a software development team creating new features and improvements for our cloud-based platform. Our platform is 5 years in development, throughout this time we collected a lot of input from the customers which we are looking to implement to make it more customer friendly.",
  link: "https://www.linkedin.com/jobs/view/2608219067/?alternateChannel=search&refId=0Y6i8OyIzRoOZ4zckaZMTg%3D%3D&trackingId=lz9TBanCZlmsRPQb3seOYQ%3D%3D",
  status: "In process",
  address: "Amsterdam, North Holland, Netherlands",
  applied: "2020-09-14 18:00:00",
  favorite: true
)

job11 = JobApplication.create!(
  user: user,
  title: "Frontend Developer",
  company_name: "Poki",
  comp_logo: "https://media-exp1.licdn.com/dms/image/C560BAQFRB_tjylkwNA/company-logo_100_100/0/1519905686977?e=1646265600&v=beta&t=JNtFBDoruCoWxzNvLIMaH1Av3BObX0u-1YsbTFHHZNA",
  description: "As our Front-End Developer, you have an excellent feel for design and are able to implement this yourself using the latest front-end web technologies. Your implementations work on all browser types and are fully responsive. You will be joining our agile development team.",
  link: "https://www.linkedin.com/jobs/view/2791752989/?alternateChannel=search&refId=0Y6i8OyIzRoOZ4zckaZMTg%3D%3D&trackingId=1ivUQssQXojjzhUPUvKzuw%3D%3D",
  status: "In process",
  address: "Amsterdam, North Holland, Netherlands",
  applied: "2020-10-14 18:00:00"

)

job12 = JobApplication.create!(
  user: user,
  title: "UX Research Intern",
  level: "Internship",
  company_name: "Picnic Technologies",
  comp_logo: "https://media-exp1.licdn.com/dms/image/C4D0BAQHS7qmjAasAyw/company-logo_100_100/0/1636644894385?e=1646265600&v=beta&t=KDK4ImggaGeIQLjA-HqlkYAyTmrNHlTCdD1GZk1_IrA",
  description: "As our UX Research intern, you are part of a diverse team. You will be working collaboratively with Data Analysts, Product Owners, and Designers to develop the full user experience. With empathy and an open personality, you guide our users through weekly research activities.",
  link: "https://www.linkedin.com/jobs/view/2802934486/?alternateChannel=search&eBP=JOB_SEARCH_ORGANIC&recommendedFlavor=JOB_SEEKER_QUALIFIED&refId=PfsqTqnWGXEaM%2B%2FZt80oLw%3D%3D&trackingId=%2BiNW1CkCWLHqSfModqXGig%3D%3D&trk=flagship3_search_srp_jobs",
  status: "Offer",
  address: "Amsterdam, North Holland, Netherlands",
  applied: "2020-11-14 18:00:00"

)

job13 = JobApplication.create!(
  user: user,
  title: "Internship Recruitment",
  company_name: "Dept Agency",
  comp_logo: "https://media-exp1.licdn.com/dms/image/C560BAQFPkutx67hK8Q/company-logo_100_100/0/1541773846236?e=1646265600&v=beta&t=SjJ7Is54BXyoAMBBIoP7JYtZFNc0N7c5KoRUBCtTok0",
  level: "Internship",
  description: "As a recruitment intern, you support the recruitment team in recruiting the best and best new colleagues, you are responsible for the organisation of campus recruitment events, and you have the opportunity to gain recruitment experience within the digital industry. We are looking for a creative, social student who is very strong in communication and a little result-oriented. You will support our campus recruiter in finding the best interns for different roles, ranging from designers to developers and data scientists to account managers. Next to that, you will also take on the more administrative tasks in the team. Scheduling interviews, managing the career inbox and replying to WhatsApp applications. All in all, there is loads to learn during this internship.",
  link: "https://www.linkedin.com/jobs/view/2800791829/?alternateChannel=search&refId=PfsqTqnWGXEaM%2B%2FZt80oLw%3D%3D&trackingId=E1dymHwPyhlXgNw%2BvSJeag%3D%3D&trk=d_flagship3_search_srp_jobs",
  status: "Pending",
  address: "Amsterdam, North Holland, Netherlands",
  applied: "2020-11-14 18:00:00"

)

job14 = JobApplication.create!(
  user: user,
  title: "Frontend Engineer",
  level: "Entry",
  company_name: "Search X Recruitment",
  comp_logo: "https://media-exp1.licdn.com/dms/image/C4D0BAQFF683NBPAyaQ/company-logo_100_100/0/1598968350600?e=1646265600&v=beta&t=Io5Z1B5v6BBJXGSfAeIKwLQS5g8pDI0bAotnPtfyb2o",
  description: "As a Full Stack Ruby Developer, you’ll develop, build and maintain reusable and scalable Ruby on Rails and Javascript code. In order to expand and improve the platform, this code is a vital part of the quality of this platform. The mobile and the web-portal systems have to be adjusted and expanded, and you will do that together with your colleagues in the Development department. Signalizing bottlenecks and bugs is also one of your responsibilities, as well as solving them. Thanks to you, this code works like a Swiss watch.",
  link: "https://www.linkedin.com/jobs/view/2810502459/?alternateChannel=search&refId=V%2BuVG99K7CpCCAYbA2RyQQ%3D%3D&trackingId=%2FFYe5LzdWQ4iQ7SmE1R7uQ%3D%3D",
  status: "Pending",
  address: "Amsterdam, North Holland, Netherlands",
  applied: "2020-10-14 18:00:00"

)

job15 = JobApplication.create!(
  user: user,
  title: "Front-End Developer",
  company_name: "Starred",
  comp_logo: "https://media-exp1.licdn.com/dms/image/C560BAQHDBgeKQ3IJhA/company-logo_100_100/0/1560418647229?e=1646265600&v=beta&t=UL1q7U3NprUbQFNtIeI65q0-9OQNtMx4kYp2Q_8o53g",
  level: "Entry",
  description: "About the job As Front-End Developer at Starred, you'll be responsible for building and maintaining web applications. You'll work with the development team, as well as UX/UI designers and graphic designers. You'll work closely with our back-end and full-stack developers to deliver consistent and reliable web experience. You'll work with our designers to improve usability for our customers. You'll optimize web design for mobile and other platforms for maximum speed. You'll work with designers to ensure high-quality graphic standards and brand consistency. Ultimately, your work will have a direct impact on the user experience of our customers. ",
  link: "https://www.linkedin.com/jobs/view/2807825899/?alternateChannel=search&refId=8tfbepi9FFKYPcUXrCLDQA%3D%3D&trackingId=EumvD%2FLeGqPSpV0i99lZrw%3D%3D",
  status: "Pending",
  address: "Amsterdam, North Holland, Netherlands",
  applied: "2020-11-14 18:00:00"

)
puts "Creating interview"

interview1 = Interview.create!(
  job_application: job3,
  start_date: "2021-11-24 14:00:00",
  end_time: "2021-11-24 15:00:00"
)

interview2 = Interview.create!(
  job_application: job3,
  start_date: "2021-12-01 13:00:00",
  end_time: "2021-12-01 15:00:00"
)

interview3 = Interview.create!(
  job_application: job9,
  start_date: "2021-11-30 14:00:00",
  end_time: "2021-11-30 15:00:00"
)

interview4 = Interview.create!(
  job_application: job10,
  start_date: "2021-11-26 09:00:00",
  end_time: "2021-11-26 10:00:00"
)

interview5 = Interview.create!(
  job_application: job11,
  start_date: "2021-11-29 14:00:00",
  end_time: "2021-11-29 15:00:00"
)

interview6 = Interview.create!(
  job_application: job9,
  start_date: "2021-12-02 11:00:00",
  end_time: "2021-12-02 12:00:00"
)

puts "Creating contact"

contact1 = Contact.create!(
  interview: interview6,
  first_name: "Erik",
  last_name: "Seveke",
  position: "CEO at SimpledCard",
  contact_url: "https://www.linkedin.com/in/seveke"
)

contact2 = Contact.create!(
  interview: interview5,
  first_name: "Anne-Marije",
  last_name: "Huijboom",
  position: "Culture&Talent",
  contact_url: "https://www.linkedin.com/in/anne-marije-huijboom-a29b32b6/"
)

conatct3 = Contact.create!(
  interview: interview4,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  position: Faker::Job.position,
  email: Faker::Internet.email
)

conatct4 = Contact.create!(
  interview: interview3,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  position: Faker::Job.position,
  email: Faker::Internet.email
)

conatct5 = Contact.create!(
  interview: interview2,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  position: Faker::Job.position,
  email: Faker::Internet.email
)

conatct6 = Contact.create!(
  interview: interview1,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  position: Faker::Job.position,
  email: Faker::Internet.email
)

puts "Database ready"
