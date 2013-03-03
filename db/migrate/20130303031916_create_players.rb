class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.integer :team_id
      t.string :handle
      t.integer :account_id

      t.timestamps
    end
  end
end
