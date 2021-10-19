class AddColorToEmployees < ActiveRecord::Migration[6.1]
  def change
    add_column :employees, :color, :string
  end
end
