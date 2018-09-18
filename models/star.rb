require_relative(".../db/sql_runner")

class Star


attr_accessor :first_name, :last_name
attr_reader :id

def initialize
  @id =options['id'].to_i if options['id']
  @first_name = options['first_name']
  @last_name = options['last_name']
end

def
end
end
