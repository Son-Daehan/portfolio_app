User.create!([
  {name: "Samuel Son", email: "Samuel.Daehan@gmail.com", password_digest: "$2a$12$Icr0brFTK6WgM/YcvePcX.ydzgrdDPpIj9zDVVZaGG9GXLDDVcZOW"}
])
Project.create!([
  {title: "Portfolio Application", user_id: "1", image_url: "https://epicallstars.com/wp-content/uploads/2021/02/COMING-SOON.jpg"},
  {title: "E-Commerce Web Application", user_id: "1", image_url: "https://epicallstars.com/wp-content/uploads/2021/02/COMING-SOON.jpg"},
  {title: "Web Design - Bootstrap Theme", user_id: "1", image_url: "https://epicallstars.com/wp-content/uploads/2021/02/COMING-SOON.jpg"}
])
Experience.create!([
  {employer: "United States Air Force", title: "Tactical Aircraft Maintainer", description: "Current duties are to diagnose, fix, and crew F-16 fighter jets.", date_beginning: "NOV 2018", date_end: "PRESENT", user_id: 1},
  {employer: "Uline Inc", title: "Sales Tax Compliance Analyst", description: "Managed, regulated, and ensured compliance with local, state, and federal sales tax laws.", date_beginning: "JAN 2017", date_end: "MAR 2018", user_id: 1}
])
Education.create!([
  {title: "Community College of the Air Force", school: "Associate Degree in Applied Science", user_id: "1", date_beginning: "OCT 2019", date_end: "DEC 2019", description: "Obtained my AAS through CCAF."},
  {title: "Kent State University", school: "Bachelor of Business Administration in Accounting", user_id: "1", date_beginning: "AUG 2011", date_end: "DEC 2016", description: "Graduated with a BBA in Accounting."}
])
