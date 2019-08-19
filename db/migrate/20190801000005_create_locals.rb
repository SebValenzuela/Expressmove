class CreateLocals < ActiveRecord::Migration[5.2]
  def change
    create_table :locals do |t|
      t.string :nombre
      t.string :direccion
      t.string :propietario
      t.integer :telefono

      t.timestamps
    end
  end
end
