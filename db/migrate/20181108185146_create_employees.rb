class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :email
      t.string :name
      t.string :last_name
      t.string :department
      t.boolean :is_admin

      t.timestamps
    end
  end
end
