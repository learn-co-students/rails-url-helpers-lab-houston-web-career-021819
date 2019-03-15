class UpdateStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :active, :BOOLEAN
  end
end
