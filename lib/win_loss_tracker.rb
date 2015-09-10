class Win_loss_tracker < ActiveRecord::Base
# the purpose of this file is to track the wins and losses of each player

  def change
    create_table :scores do |t|
      t.string   :name
      t.integer  :wins
      t.integer  :losses
    end
  end
end




