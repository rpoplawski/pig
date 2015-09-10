class Player
  attr_reader :name
  attr_accessor :score

  def initialize name
    @name  = name
    @score = 0
  end

  def add_to_score value
    @score += value
  end

  def name
    @name
  end

  def score
    @score
  end

  def to_s
    "Player: #{name} -- Score: #{score}"
  end
end
