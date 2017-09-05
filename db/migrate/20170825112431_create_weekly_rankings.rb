class CreateWeeklyRankings < ActiveRecord::Migration[5.1]
  def change
    create_table :weekly_rankings do |player|
      player.integer :week
      player.string :playerId
      player.string :name
      player.string :position
      player.string :team              # "NO"
      player.float :standard
      player.float :standardLow
      player.float :standardHigh
      player.float :ppr
      player.float :pprLow
      player.float :pprHigh
      player.string :injury
      player.string :practiceStatus  # nil
      player.string :gameStatus      # nil
      player.string :lastUpdate
      player.integer :player_id
      player.float :standard_low
      player.float :standard_high
      player.float :ppr_low
      player.float :ppr_high
      player.string :practice_status       # "14"
      player.string :game_status       # "14"
      player.string :last_update       # "14"
      player.timestamps
    end
  end
end
