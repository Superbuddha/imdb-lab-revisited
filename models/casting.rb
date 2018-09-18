require_relative(".../db/sql_runner")

class Casting

  attr_accessor :movie_id, :star_id, :fee
  attr_reader :id

  def initialize
    @id = options ['id'].to_i if options['id']
    @movie_id = options ['movie_id'].to_i
    @star_id = options['star_id'].to_i
    @fee = options['fee'].to_i
  end

  def save()
    sql = "INSERT INTO castings(movie_id, star_id, fee) VALUES($1,$2,$3) RETURNING id"
    values = [@movie_id, @star_id, @fee]
    casting = SqlRunner.run(sql, values)[0];
    @id = casting['id'].to_i
  end

  #keep an eye on this function

  def update()
    sql ="UPDATE castings (movies_id, stars_id, fee) VALUES ($1, $2, $3) RETURNING id"
    values = [@movie_id, @star_id, @fee]
    casting = SqlRunner.run(sql, values)
  end

  def delete()
    sql ="DELETE * FROM castings WHERE id =$1"
    values = [@id]
    SqlRunner.run(sql, values)
  end
  def self.all()
    sql ="SELECT * FROM castings"
    data = SqlRunner.run(sql)
    return data.map{|casting| Casting.new(casting)}
  end
end
