class CreatePaids < ActiveRecord::Migration
  def change
    create_table :paids do |t|
      t.boolean :pay
      t.belongs_to :register

      t.timestamps null: false
    end
  end
end
