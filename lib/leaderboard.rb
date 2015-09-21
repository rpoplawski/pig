class Leaderboard
  def initialize
    puts "\n_____________________________________________________"
    puts "                     LEADERBOARD"
    puts "_______________________________________________________"


    Score.order(average: :desc).limit(5).each do |x|
      puts "\n\t#{x.name}:\t\t#{x.average}\n"
    end
    #puts Score.order(avg: :desc)#.avg#.limit(5)#.each do |x|
  end
end
