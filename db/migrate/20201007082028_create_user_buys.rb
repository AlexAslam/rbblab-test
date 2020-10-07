class CreateUserBuys < ActiveRecord::Migration[6.0]
  def change
    create_table :user_buys do |t|
      t.references :user
			t.references :buyings, polymorphic: true

      t.timestamps
    end
  end
end
