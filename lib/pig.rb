
class Pig
  def initialize
    @players   = []
    @max_score = 100
  end


  def play_round
    @players.each do |p|
      puts "-" * 20
      puts "\n\nIt is #{p.name}'s turn! You have #{p.score} points. (Press ENTER)"
      gets
      take_turn p
    end
    remove_losing_players!
  end

  def remove_losing_players!
    if @players.any? { |p| p.score > @max_score }
      max_score = @players.map { |p| p.score }.max
      @players = @players.select { |p| p.score == max_score }
    end
  end

  def winner
    if @players.length == 1
      @players.first
    end
  end











  def get_players
    puts "Getting player names. Type q when done."
    loop do
      print "Player #{@players.count + 1}, what is your name? > "
      input = gets.chomp
      if input == "q" || input == ""
        return
      else
        @players.push Player.new(input)
      end
    end

      puts "\nHow many peeps are playing?\n\n"
      num_players = gets.chomp.to_i

      @players = []

      num_players.times do |person|
        puts "\n\nPlayer #{person+1}, what is your name?\n\n"
        name = gets.chomp
        @players.push Player.new(name)

        s = Score.where(name: name).first
        unless s == nil
          puts "Hi, #{name}"
          puts "Game history: #{s.total} games played, #{s.wins} wins, #{s.losses} losses."
        else
          s = Score.create(name: name, wins: 0, losses: 0)
          s.save!
        end
      end
  end




 #         players_and_scores.each do |player|
 #           sc = Score.find_by_name(player.name)
 #           puts "#{player.name}, your record is #{sc.total} games played, #{sc.wins} wins, #{sc.losses} losses, #{sc.ties} ties"
 #           puts "You've won #{sc.average}% of the time."
 #         end

 #         return

 #       else
 #         puts "\nGame over!  #{possible_winners.join} wins!\n\n"
 #         name = possible_winners.join

 #         s = Score.find_by_name(name)
 #         s.wins+=1
 #         s.save!

 #         players_and_scores.each do |player|
 #           unless possible_winners.include? player.name
 #              s = Score.find_by_name(player.name).losses+=1
 #              u = Score.find_by_name(player.name)
 #              u.losses+=1
 #              u.save!
 #           end
 #         end
 #end




  def take_turn player
    turn_total = 0
    loop do
      roll = rand 1..6
      if roll == 1
        puts "You rolled a 1. No points for you!"
        return
      else
        turn_total += roll
        puts "You rolled a #{roll}. Turn total is #{turn_total}. Again? (y/n)"
        if gets.chomp.downcase == "n"
          puts "Stopping with #{turn_total} for the turn."
          player.score += turn_total
          return
        end
      end
    end
  end
end

