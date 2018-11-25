class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :time
      t.references :place, references: :place, foreign_key: true
      t.string :description
      t.string :poster
      t.string :tags
      t.integer :max_capacity

      t.timestamps
    end
  end
end
