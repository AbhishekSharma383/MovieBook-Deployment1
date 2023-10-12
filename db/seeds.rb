
# Clear existing Movie records to start with a clean slate
# Movie.destroy_all

# created 6 movies 

movie = Movie.create!(
    title: "Alladin",
    description: "Fairy tale ",
    release_date: "01/01/2024",
    genre: "Fiction"
)
file_path = Rails.root.join("app/assets/images/movie1.jpg")
file = File.open(file_path)
movie.image.attach(io: file, filename: "movie1.jpg")
file.close

movie = Movie.create!(
    title: "Major",
    description: "Patriotism",
    release_date: "02/01/2024",
    genre: "Action"
)
file_path = Rails.root.join("app/assets/images/movie2.jpg")
file = File.open(file_path)
movie.image.attach(io: file, filename: "movie2.jpg")
file.close

movie = Movie.create!(
    title: "Sherni",
    description: "Women Empowerment",
    release_date: "03/01/2024",
    genre: "Action"
)
file_path = Rails.root.join("app/assets/images/movie3.jpg")
file = File.open(file_path)
movie.image.attach(io: file, filename: "movie3.jpg")
file.close


movie = Movie.create!(
    title: "Jagga Jassos",
    description: "Super Powers",
    release_date: "04/01/2023",
    genre: "Fiction"
)
file_path = Rails.root.join("app/assets/images/movie4.jpg")
file = File.open(file_path)
movie.image.attach(io: file, filename: "movie4.jpg")
file.close

movie = Movie.create!(
    title: "Gaddi ",
    description: "Masti",
    release_date: "05/01/2023",
    genre: "Comedy"
)
file_path = Rails.root.join("app/assets/images/movie5.jpg")
file = File.open(file_path)
movie.image.attach(io: file, filename: "movie5.jpg")
file.close


movie = Movie.create!(
    title: "Beatle ",
    description: "SuperPowers",
    release_date: "06/01/2023",
    genre: "Action"
)
file_path = Rails.root.join("app/assets/images/movie6.jpg")
file = File.open(file_path)
movie.image.attach(io: file, filename: "movie6.jpg")
file.close



# create 4 venues 

venue = Venue.create!(
    name: "venue1",
    address: "Address1",
    capacity: "100",

)
file_path = Rails.root.join("app/assets/images/venue1.jpeg")
file = File.open(file_path)
venue.image.attach(io: file, filename: "venue1.jpeg")
file.close

venue = Venue.create!(
    name: "venue2",
    address: "Address2",
    capacity: "100",

)
file_path = Rails.root.join("app/assets/images/venue2.jpeg")
file = File.open(file_path)
venue.image.attach(io: file, filename: "venue2.jpg")
file.close

venue = Venue.create!(
    name: "venue3",
    address: "Address3",
    capacity: "100",

)
file_path = Rails.root.join("app/assets/images/venue3.jpeg")
file = File.open(file_path)
venue.image.attach(io: file, filename: "venue3.jpg")
file.close

venue = Venue.create!(
    name: "venue4",
    address: "Address4",
    capacity: "100",

)
file_path = Rails.root.join("app/assets/images/venue4.jpeg")
file = File.open(file_path)
venue.image.attach(io: file, filename: "venue4.jpg")
file.close




# add each show to a movie , afterwards can directly be added accordingly from UI .

showtime = Showtime.create!(
    movie_id: 1,
    venue_id: 1,
    showtime_at: "01/01/2024 12::00 AM",

)

showtime = Showtime.create!(
    movie_id: 2,
    venue_id: 2,
    showtime_at: "02/01/2024 12::00 AM",

)

showtime = Showtime.create!(
    movie_id: 3,
    venue_id: 3,
    showtime_at: "03/01/2024 12::00 AM",

)

showtime = Showtime.create!(
    movie_id: 4,
    venue_id: 4,
    showtime_at: "04/01/2024 12::00 AM",

)


rows = ('A'..'J').to_a
seat_numbers = (1..8).to_a

# Seed the data
rows.each do |row|
  seat_numbers.each do |number|
    # You can set the initial status as 'available', 'selected', or 'reserved' as needed.
    Seat.create(row: row, number: number, status: 'available')
  end
end