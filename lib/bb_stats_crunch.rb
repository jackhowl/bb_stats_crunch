puts "Hello World"
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

hometeam = 0
visteam = 0

module GetStats
@hometeam = 0
@visteam = 0
  CSV.foreach("files/GL1968.TXT") do |row|
    team1 = row[3]
    score1 = row[9].to_i
    team2 = row[6]
    score2 = row[10].to_i
      if score1 > score2
    puts "The visitors  won #{team1} #{score1} #{team2} #{score2}"
    @visteam += 1
      else
    puts "The home team won #{team2} #{score2} #{team1} #{score1}"
    @hometeam += 1
end
end
 #   puts "the home team won" @hometeam
 #   puts "the visiting team won" @visteam
 #   printf "hello" @visteam
 #    puts "#{hometeam}"
end
end
