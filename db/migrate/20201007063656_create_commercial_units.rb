class CreateCommercialUnits < ActiveRecord::Migration[6.0]
  def change
    create_table :commercial_units do |t|
      t.string :owner, default: ""
      t.string :address, default: ""
      t.bigint :shops, default: 0
      t.bigint :sqmt, default: 0
      t.bigint :parking, default: 0
      t.decimal :price, default: 0.0

      t.timestamps
    end
  end
end
