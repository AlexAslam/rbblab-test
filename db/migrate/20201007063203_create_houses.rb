class CreateHouses < ActiveRecord::Migration[6.0]
  def change
    create_table :houses do |t|
      t.string :owner, default: ""
      t.string :address, default: ""
      t.bigint :rooms, default: 0
      t.bigint :sqmt, default: 0
      t.bigint :floors, default: 0
      t.boolean :air_cond, default: false
      t.decimal :price, default: 0.0

      t.timestamps
    end
  end
end
