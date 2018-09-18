require_relative(".../db/sql_runner")

class Star

  attr_accessor :first_name, :last_name
  attr_reader :id

  def initialize
    @id =options['id'].to_i if options['id']
    @first_name = options['first_name']
    @last_name = options['last_name']
  end

  def save()
    sql = "INSERT INTO stars (first_name, last_name) VALUES ($1, $2) RETURNING id"
    values = [@first_name, @last_name]
    star = SqlRunner.run(sql, values)[0];
    @id = star['id'].to_i
  end

  def update()
    sql = "UPDATE stars SET (first_name, last_name) = ($1, $2) WHERE id =$3"
    values =[@first_name, @last_name]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE * FROM stars WHERE id =$1"
    values = [@id]
    SqlRunner.run(sql, values)
  end
  
  def self.all()
    sql ="SELECT * stars"
    star_data = SqlRunner.run(sql)
    return Star.map_items(star_data)
  end
end
