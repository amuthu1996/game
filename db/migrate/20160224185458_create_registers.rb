class CreateRegisters < ActiveRecord::Migration
  def change

    create_table :events do |t|
      t.string :name
      t.integer :members
      t.timestamp :schedule

      t.timestamps null: false
    end

    create_table :registers, id: false do |t|
      t.integer :id,                  null: false, primary_key: true
      t.string :email,                null: false
      t.string :name,                 null: false
      t.string :password,             null: false
      t.string :auth_token,           default: ""
      t.timestamp :auth_token_expire, default: ""
      t.string :city,                 default: ""
      t.string :state,                default: ""
      t.string :source,               null: false
      t.string :college,              default: ""
      t.string :course,               default: ""
      t.string :year,                 null: false
      t.string :phone,                default: ""
      t.string :custom,               default: ""

      t.timestamps null: false
    end

    add_index :registers, :id,                unique: true

    create_table :teams do |t|
      t.string :name
      t.belongs_to :event, index:true
      t.timestamps null: false
    end

    create_table :registers_teams, id: false do |t|
      t.belongs_to :register, index: true
      t.belongs_to :team, index: true
    end

  end
end
