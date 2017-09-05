class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :playerId
      t.integer :active
      t.string :jersey
      t.string :lname
      t.string :fname
      t.string :displayName
      t.string :team
      t.string :position
      t.string :height
      t.string :weight
      t.string :dob
      t.string :college
      t.integer :player_id
      t.string :display_name

      t.timestamps
    end
  end
end
