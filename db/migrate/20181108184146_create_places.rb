class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :building
      t.integer :floor
      t.string :classroom
      t.integer :max_capacity

      t.timestamps
    end
  end
end
