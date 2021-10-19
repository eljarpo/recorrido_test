class CreateShifts < ActiveRecord::Migration[6.1]
  def change
    create_table :shifts do |t|
      t.datetime :start_time
      t.integer :duration, default: 1
      t.references :day_shift, null: false, foreign_key: true
      t.references :employee, null: true, foreign_key: true

      t.timestamps
    end
  end
end
