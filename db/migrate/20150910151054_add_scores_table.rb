class AddScoresTable < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.string   :name
      t.integer  :wins
      t.integer  :losses
    end
  end
end
