ruts "Hello World"
puts "Hello World"
puts "Hello World"

require 'csv'
class BbStatsCrunch
  attr_accessor :name

  def initialize name
    @name = name
  end

  def mood
    "#{name} is always HAPPY!!"
  end

module GetStats
  @stats = {}
  CSV.foreach("files/GL1969.TXT") do |row|
    puts row
  end
end
end

