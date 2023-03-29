puts 'Starting to destroy'

puts 'Destroying Reservations'

Reservation.destroy_all

puts 'Destroying Events'

Event.destroy_all

puts 'Destroying Users'

User.destroy_all

puts 'Finished destroying / Starting to seed'

# seeding users

users = [
  {
    data: {
      first_name: 'admin',
      last_name: 'admin',
      email: 'admin@email.com',
      password: 'Test123'
    }
  }
]

users.each do |user|
  userDB = User.new(user[:data])
  userDB.save!
end

puts 'Finished seeding users'

puts "Starts seeding Organizations"

organizations = [
  {
    data: {
      name: "East End House",
      description: "
      Since 1875 East End House has offered innovative programming to the community and continues to strive for excellence as we look to the future. Our programs have received numerous accolades and distinctions. In 2010 East End House became the first in the country to be accredited as an overall agency and to earn separate accreditation for the School Age and Middle School Programs through the Council on Accreditation (COA). In both 2009 and 2010 the Annie E. Casey Foundation and the United Neighborhood Centers of America recognized excellence in family engagement programming through the national Families Count: Family Strengthening Award. East End House was also awarded the Massachusetts Nonprofit Network’s Management Award in 2010. The agency continues to create innovative and essential programs for the children, youth, families, and seniors in our community.
      East End House community center uses a holistic approach to promote the well-being, academic achievement, and successful transition to adulthood of children and youth from under-resourced families in Cambridge and surrounding communities. As part of this approach, East End House provides support services to a diverse population, from infants to seniors, to strengthen family and community.
      ",
      location: "105 Spring St, Cambridge, MA 02141",
      image: "https://eastendhouse.org/wp-content/uploads/2018/10/eeh_logo_tagline.jpg"
    }
  }
]

organizations.each do |organization|
  organizationDB = Organization.new(organization[:data])
  organizationDB.save!
end

puts "Finished seeding Organizations"

puts "Starts seeding Events"

events = [
  {
    data: {
      name: "Food Bank Volunteering (First Shift, 11th of April)",
      description: "Help set up and distribute food to our clients. The event ends at about 3pm depending on the number of clients.The meeting point for the first shift is at 10:50am at Hult Center the second group meets at 12:45pm.",
      location: "105 Spring St, Cambridge, MA 02141",
      date: DateTime.strptime('11-04-2023T17:00:00+06:00', '%d-%m-%YT%H:%M:%S%z'),
      organization: Organization.first
    }
  },
  {
    data: {
      name: "Food Bank Volunteering (Second Shift, 11th of April)",
      description: "Help set up and distribute food to our clients. The event ends at about 3pm depending on the number of clients.The meeting point for the first shift is at 10:50am at Hult Center the second group meets at 12:45pm.",
      location: "105 Spring St, Cambridge, MA 02141",
      date: DateTime.strptime('11-04-2023T17:00:00+06:00', '%d-%m-%YT%H:%M:%S%z'),
      organization: Organization.first
    }
  },
  {
    data: {
      name: "Food Bank Volunteering (First Shift, 18th of April)",
      description: "Help set up and distribute food to our clients. The event ends at about 3pm depending on the number of clients.The meeting point for the first shift is at 10:50am at Hult Center the second group meets at 12:45pm.",
      location: "105 Spring St, Cambridge, MA 02141",
      date: DateTime.strptime('18-04-2023T17:00:00+06:00', '%d-%m-%YT%H:%M:%S%z'),
      organization: Organization.first
    }
  },
  {
    data: {
      name: "Food Bank Volunteering (Second Shift, 18th of April)",
      description: "Help set up and distribute food to our clients. The event ends at about 3pm depending on the number of clients.The meeting point for the first shift is at 10:50am at Hult Center the second group meets at 12:45pm.",
      location: "105 Spring St, Cambridge, MA 02141",
      date: DateTime.strptime('18-04-2023T17:00:00+06:00', '%d-%m-%YT%H:%M:%S%z'),
      organization: Organization.first
    }
  },
]

events.each do |event|
  eventDB = Event.new(event[:data])
  eventDB.save!
end

puts "Finished seeding Events"

puts 'finished seeding'
