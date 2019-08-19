class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.references :local, foreign_key: true
      t.string :nombre
      t.string :categoria
      t.string :marca

      t.timestamps
    end
  end
end
