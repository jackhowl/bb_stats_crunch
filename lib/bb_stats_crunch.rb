require 'csv'
class BbStatsCrunch
  
  attr_accessor :team1, :team2, :score1, :score2, :viswins, :homewins

  def initialize(team1, team2, score1, score2, viswins, homewins, totalscore)
    @team1 = team1
    @team2 = team2
    @score1 = Float(score1)
    @score2 = Float(score2)
    @viswins = Float(viswins)
    @homewins = Float(homewins)
    @totalscore = Float(totalscore)
  end

#  puts "enter year (valid year between 1960 - 1969)"
#  year = gets.chomp

  year = 1960
  homewins, viswins, totalscore = 0, 0, 0

  File.open("files/GL#{year}.OUTPUT", 'w') do |content|
  CSV.foreach("files/GL#{year}.TXT") do |row|
    team1 = row[3]
    score1 = row[9].to_i
    team2 = row[6]
    score2 = row[10].to_i
    totalscore = totalscore + score1 + score2
      if score1 > score2
        viswins += 1
        content.puts "#{team1} beat #{team2} by a score of #{score1} to #{score2}"
      else
        homewins += 1
        content.puts "#{team2} beat #{team1} by a score of #{score2} to #{score1}"
      end
    end
  end
  puts "The home team won #{homewins} times."
  puts "The vistors won #{viswins} times."
  puts "Total runs scored in #{year} was #{totalscore}."
end
