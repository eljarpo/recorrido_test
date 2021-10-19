class CreateServiceDuties < ActiveRecord::Migration[6.1]
  def change
    create_table :service_duties do |t|
      t.integer :day_of_week
      t.datetime :start_time
      t.integer :duration
      t.references :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
