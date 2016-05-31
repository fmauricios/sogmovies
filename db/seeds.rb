# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Movie Types

type_serie = MovieType.create(name: "serie")
type_movie = MovieType.create(name: "movie")
type_anime = MovieType.create(name: "anime")

# Users

user1 = User.create(
  email: "mauricioserf@hotmail.com",
  password: "mauricioserna95",
  first_name: "Mauricio",
  last_name: "Serna",
  username: "fmauricios",
  genre: "Hombre",
  is_admin: true,
  avatar: File.new(Rails.root.join("app", "assets", "images", "mauricio.jpg"))
)

# Genres

terror = Genre.create(name: "Terror")
genre2 = Genre.create(name: "Suspenso")
accion = Genre.create(name: "Acción")
comedia = Genre.create(name: "Comedia")
aventura = Genre.create(name: "Aventura")

# Actors

dead_pool_actors = Actor.create(
  [
    {
      first_name: "Ryan",
      last_name: "Reynolds",
      birthday: Date.new(1976, 10, 23)
    },
    {
      first_name: "Morena",
      last_name: "Baccarin",
      birthday: Date.new(1979, 06, 2)
    },
    {
      first_name: "Ed",
      last_name: "Skrein",
      birthday: Date.new(1983, 03, 29)
    }
  ]
)

# Directors

dead_pool_directors = Director.create(first_name: "Tim", last_name: "Miller", birthday: Date.new(1970, 03, 29))


Movie.create(
  [
    {
      title: "DeadPool",
      description: "Wade Winston Wilson, mejor conocido como Deadpool (adaptado como Masacre en algunas traducciones españolas)2 , es un personaje ficticio, mercenario y antihéroe, que aparece en los cómics publicados por Marvel Comics",
      movie_length: "85",
      youtube_url: "https://www.youtube.com/watch?v=ZIM1HydF9UA",
      user: User.first,
      release_year: Date.new(2016, 5, 12),
      avatar: File.new(Rails.root.join("app", "assets", "images", "deadpool.jpeg")),
      movie_type: type_movie,
      actors: dead_pool_actors,
    },
    {
      title: "Avengers",
      description: "Avengers: Age of Ultron (titulada Avengers: Era de Ultrón en Hispanoamérica y México y Los Vengadores: La Era de Ultrón en España) es una película de acción, secuela de The Avengers, dirigida por Joss Whedon y producida por Kevin Feige",
      movie_length: "142",
      youtube_url: "https://www.youtube.com/watch?v=-m6UKS1L0YQ",
      user: User.first,
      release_year: Date.new(2016, 5, 8),
      avatar: File.new(Rails.root.join("app", "assets", "images", "avengers.jpg")),
      movie_type: type_movie
    },
    {
      title: "Revenant",
      description: "Revenant: El Renacido (en inglés, The Revenant) es una película estadounidense estrenada en diciembre del 2015, producida y dirigida por el mexicano Alejandro González Iñárritu.",
      movie_length: "156",
      youtube_url: "https://www.youtube.com/watch?v=LoebZZ8K5N0",
      user: User.first,
      release_year: Date.new(2016, 3, 4),
      avatar: File.new(Rails.root.join("app", "assets", "images", "revenant.jpg")),
      movie_type: type_movie
    },
    {
      title: "I Origins",
      description: "I Origins (en español Orígenes3 ) es una película estadounidense de ciencia ficción y drama de 2014 escrita, dirigida y producida por Mike Cahill. La producción independiente se estrenó en el Festival de Cine de Sundance el 18 de enero de 2014",
      movie_length: "106",
      youtube_url: "https://www.youtube.com/watch?v=Mk4briOLrTQ",
      user: User.first,
      release_year: Date.new(2014, 1, 1),
      avatar: File.new(Rails.root.join("app", "assets", "images", "origins.jpg")),
      movie_type: type_movie
    },
    {
      title: "The Equalizer",
      description: "The Equalizer (titulada El protector en España; El justiciero en Hispanoamérica) es una película de suspenso estadounidense, dirigida por Antoine Fuqua y escrita por Richard Wenk, basado en la serie de televisión del mismo nombre.",
      movie_length: "132",
      youtube_url: "https://www.youtube.com/watch?v=VjctHUEmutw",
      user: User.first,
      release_year: Date.new(2014, 3, 12),
      avatar: File.new(Rails.root.join("app", "assets", "images", "equalizer.png")),
      movie_type: MovieType.last
    }
  ]
)
