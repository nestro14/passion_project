class CreateRankings < ActiveRecord::Migration[5.1]
  def change
    create_table :rankings do |t|
      t.string :playerId
      t.integer :player_id     # "454"
      t.string :position      # "WR"
      t.string :displayName  # "Calvin Johnson"
      t.string :display_name
      t.string :fname         # "Calvin"
      t.string :lname         # "Johnson"
      t.string :team          # "DET"
      t.integer :byeWeek      # "9"
      t.integer :bye_week
      t.float :standDev
      t.float :nerdRank     # "7.209"
      t.float :stand_dev
      t.float :nerd_rank
      t.integer :positionRank # "1"
      t.integer :position_rank
      t.integer :overallRank
      t.integer :overall_rank  # "4"
      t.timestamps
    end
  end
end
