class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string :code
      t.string :fullName
      t.string :shortName
      t.string :full_name
      t.string :short_name
      t.timestamps
    end
  end
end
