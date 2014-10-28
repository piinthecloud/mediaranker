class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.string :creator
      t.text :description
      t.integer :votes

      t.timestamps
    end
  end
end
