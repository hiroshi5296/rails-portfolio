class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name, null: false, limit: 20
      t.string :number, null: false, limit: 30
      t.integer :subject_id
      t.timestamps
    end
  end
end
