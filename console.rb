require_relative('models/casting')
require_relative('models/star')
require_relative('models/movie')
require('pry-byebug')

Casting.delete_all()
Movie.delete_all()
Star.delete_all()

movie1 = Movie.new({'title' => 'Groundhog Day','genre' => 'drama','budget' => 10})
movie1.save()

movie2 = Movie.new({'title' => 'Ghostbusters','genre' => 'comedy','budget' => 20})
movie2.save()

movie3 = Movie.new({'title' => 'Mission Impossible','genre' => 'action','budget' => 30})
movie3.save()

movie4 = Movie.new({'title' => 'The Big Lebowski','genre' => ' comedy','budget' => 40})
movie4.save()

star1 = Star.new({'first_name' => 'Bill', 'last_name' => 'Murray'})
star1.save()

star2 = Star.new({'first_name' => 'Tom','last_name' => 'Cruise'})
star2.save()

star3 = Star.ne({'first_name' => 'Jeff', 'last_name' => 'Bridges' })
star3.save()

star4 = Star.ne({'first_name' => 'Sigourney', 'last_name' => 'Weaver' })
star3.save()

star5 = Star.ne({'first_name' => 'Andy', 'last_name' => 'McDowell' })
star3.save()

star6 = Star.ne({'first_name' => 'Ving', 'last_name' => 'Rhames' })
star3.save()

casting1 = Casting.new({'movie_id' => movie1.id, 'star_id' => star1.id, 'fee' =>5})
casting2 = Casting.new({'movie_id' => movie1.id, 'star_id' => star5.id, 'fee' =>4})
casting3 = Casting.new({'movie_id' => movie2.id, 'star_id' => star1.id, 'fee' =>4})
casting4 = Casting.new({'movie_id' => movie2.id, 'star_id' => star4.id, 'fee' =>3})
casting5 = Casting.new({'movie_id' => movie.id, 'star_id' => star.id, 'fee' =>})
casting6 = Casting.new({'movie_id' => movie.id, 'star_id' => star.id, 'fee' =>})
casting7 = Casting.new({'movie_id' => movie.id, 'star_id' => star.id, 'fee' =>})

casting.save()
casting.save()
casting.save()
casting.save()
casting.save()
casting.save()
casting.save()

binding.pry
nil
