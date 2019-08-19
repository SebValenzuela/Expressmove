class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :customer, foreign_key: true
      t.references :product, foreign_key: true
      t.date :fecha
      t.float :monto

      t.timestamps
    end
  end
end
