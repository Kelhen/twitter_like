class CreateTwitts < ActiveRecord::Migration[5.2]
  def change
    create_table :twitts do |t|
      t.text :twitt
      t.datetime :created_at

      t.timestamps
    end
  end
end
