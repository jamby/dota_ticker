class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.datetime :start_time
      t.string :workflow_state
      t.integer :team1_id
      t.integer :team2_id

      t.timestamps
    end
  end
end
