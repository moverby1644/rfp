class CreateRosters < ActiveRecord::Migration
  def change
    create_table :rosters do |t|
      t.string :rname
      t.string :name
      t.string :position
      t.string :number

      t.timestamps null: false
    end
  end
end
