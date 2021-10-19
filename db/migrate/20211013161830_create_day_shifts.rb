class CreateDayShifts < ActiveRecord::Migration[6.1]
  def change
    create_table :day_shifts do |t|
      t.date :date
      t.references :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
