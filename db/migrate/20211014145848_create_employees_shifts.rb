class CreateEmployeesShifts < ActiveRecord::Migration[6.1]
  def change
    create_table :employees_shifts, id: false do |t|
      t.belongs_to :shift
      t.belongs_to :employee
    end
  end
end
