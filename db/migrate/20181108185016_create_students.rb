class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :email
      t.string :name
      t.string :last_name
      t.string :semester
      t.string :degree
      t.string :photo
      t.string :student_groups

      t.timestamps
    end
  end
end
