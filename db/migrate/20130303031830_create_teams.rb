class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.integer :api_teamid
      t.string :team_name
      t.string :logo
      t.string :country
      t.string :team_tag

      t.timestamps
    end
  end
end
