class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :stu_id, :index => { :unique => true }, :null => false
      t.string :stu_class
      t.string :stu_year

      t.timestamps
    end
  end
end
