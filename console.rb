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
      'title' => 'Mission Impossible',
      'genre' => 'action'
      })
      movie3.save()

      movie4 = Movie.new({
        'title' => 'The Big Lebowski',
        'genre' => ' comedy'
        })
        movie4.save()

star1 = Star.new({
  'first_name' => 'Bill',
  'last_name' => 'Murray'
  })
  star1.save()

star2 = Star.new({
  'first_name' => 'Tom',
  'last_name' => 'Cruise'
  })
  star2.save()

  star3 = Star.ne({
    'first_name' => 'Jeff',
    'last_name' => 'Bridges'
    })
    star3.save()

binding.pry
nil
