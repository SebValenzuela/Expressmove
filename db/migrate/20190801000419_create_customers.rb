class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :nombre
      t.string :rut
      t.string :email
      t.integer :telefono
      t.date :direccion

      t.timestamps
    end
  end
end
