class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :email
      t.string :password
      t.string :name
      t.string :second_name
      t.string :semester
      t.string :degree

      t.timestamps
    end
  end
end
