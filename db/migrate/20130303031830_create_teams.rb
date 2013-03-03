class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.integer :api_teamid
      t.string :team_name
      t.string :logo
      t.string :country

      t.timestamps
    end
  end
end
