class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.boolean :approval
      t.references :admin, references: :employee, foreign_key: true
      t.references :event, references: :event, foreign_key: true

      t.timestamps
    end
  end
end
