class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.integer :members
      t.timestamp :schedule

      t.timestamps null: false
    end
  end
end
