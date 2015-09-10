class Score < ActiveRecord::Base

  def total
    wins+losses
  end

  def average
    ((wins * 100.0) / (wins + losses)).round 2
  end
end
