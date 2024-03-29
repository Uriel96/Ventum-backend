class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.boolean :approval, default: nil
      t.references :employee, foreign_key: true
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
