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

def 
end
