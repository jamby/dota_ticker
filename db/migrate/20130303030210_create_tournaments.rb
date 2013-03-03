class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string :name
      t.string :api_id
      t.string :url

      t.timestamps
    end
  end
end
