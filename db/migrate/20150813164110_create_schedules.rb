class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :date
      t.string :time
      t.string :location
      t.string :oppo
      t.string :result

      t.timestamps null: false
    end
  end
end
