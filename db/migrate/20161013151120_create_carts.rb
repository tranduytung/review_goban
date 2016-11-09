class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.references :user, index: true, foreign_key: true
      t.integer :status, default: 0

      t.timestamps null: false
    end
  end
end
