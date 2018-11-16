class CreateRegisters < ActiveRecord::Migration[5.2]
  def change
    create_table :registers do |t|
      t.datetime :time
      t.references :student, references: :student, foreign_key: true
      t.references :event, references: :event, foreign_key: true

      t.timestamps
    end
  end
end
