class CreateComplexBuildings < ActiveRecord::Migration[6.0]
  def change
    create_table :complex_buildings do |t|
      t.string :owner, default: ""
      t.string :address, default: ""
      t.bigint :units, default: 0
      t.bigint :sqmt, default: 0
      t.decimal :price, default: 0.0

      t.timestamps
    end
  end
end
