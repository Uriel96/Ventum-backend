class CreateStudentGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :student_groups do |t|
      t.string :name
      t.string :department

      t.timestamps
    end
  end
end
