require_relative('../db/sql_runner')

class House
  attr_reader :id
  attr_accessor :name

  def initialize(options)
    @id = options["id"].to_i if options["id"]
    @name = options["name"]
  end

  def save()
    sql = "INSERT INTO houses (name) values ($1) RETURNING id"
    values = [@name]

    house = SqlRunner.run(sql, values).first
    @id = house["id"].to_i
  end
end
