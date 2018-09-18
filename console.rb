require_relative('models/casting')
require_relative('models/star')
require_relative('models/movie')
require('pry-byebug')

Casting.delete_all()
Movie.delete_all()
Star.delete_all()

movie1 = Movie.new({
  'title' => 'Groundhog Day',
  'genre' => 'drama'
  })
  movie1.save()

  movie2 = Movie.new({
    'title' => 'Ghostbusters',
    'genre' => 'comedy'
    })
    movie2.save()

    movie3 = Movie.new({
      'title' => 'Mission Impossible'
      'genre' => 'action'
      })
      movie3.save()

      movie4 = Movie.neew({
        'title' => 'The Big Lebowski'
        'genre' => ' comedy'
        })
        movie4.save()
