class CreateVids < ActiveRecord::Migration
  def change
    create_table :vids do |t|
      t.string :name
      t.string :url
      t.string :note

      t.timestamps null: false
    end
  end
end
