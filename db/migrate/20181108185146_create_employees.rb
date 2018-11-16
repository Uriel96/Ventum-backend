class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :email
      t.string :password
      t.string :name
      t.string :second_name
      t.string :department
      t.boolean :is_admin

      t.timestamps
    end
  end
end
