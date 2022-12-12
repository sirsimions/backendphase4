# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Airline.destroy_all
Review.destroy_all
puts "start seeding"

Airline.create([
  {
    name: "United Airlines",
    image_url: "https://open-flights.s3.amazonaws.com/United-Airlines.png"
  },
  {
    name: "Southwest",
    image_url: "https://open-flights.s3.amazonaws.com/Southwest-Airlines.png"
  },
  {
    name: "Delta",
    image_url: "https://open-flights.s3.amazonaws.com/Delta.png"
  },
  {
    name: "Alaska Airlines",
    image_url: "https://open-flights.s3.amazonaws.com/Alaska-Airlines.png"
  },
  {
    name: "JetBlue",
    image_url: "https://open-flights.s3.amazonaws.com/JetBlue.png"
  },
  {
    name: "American Airlines",
    image_url: "https://open-flights.s3.amazonaws.com/American-Airlines.png"
  }
])
reviews = Review.create([
    {
        title: 'Great airline',
        description: 'I had a lovely time',
        airline_id: 1
    },
    {
        title: 'Worse airline',
        description: 'I had an awful time',
        airline_id: 6
    },
    {
        title: 'Great airline',
        description: 'I had a lovely time',
        airline_id: 4
    },
    {
        title: 'Good airline',
        description: 'I had a good time',
        airline_id: 5
    },
    {
        title: 'Fair airline',
        description: 'I had a nice time',
        airline_id: 3
    },
    {
        title: 'bad airline',
        description: 'I had a bad time',
        airline_id: 2
    }
])
#users = User.create([
  #{
    #username: "mitch",
    #password_digest: "Come"
  #},
  #{
    #username: "purity_k",
    #password_digest: "22G"
  #},
  #{
    #username: "Otieno@g",
    #password_digest: "hsjy"
  #},
  #{
    #username: "Alice",
    #password_digest: "Alice@126"
  #},
  #{
    #username: "polla",
    #password_digest: "Polla36"
  #},
  #{
    #username: "fancy@jeru",
    #password_digest: "gstr@"
  #}
#])

# airline1= Airline.create(name: "United Airlines", image_url: "https://open-flights.s3.amazonaws.com/United-Airlines.png")

# review1 = Review.create(title: "Great airline", description: "I had an awsome time", airline_id: airline1.id)

puts "done seeding"