class CreateEntradas < ActiveRecord::Migration[5.2]
  def change
    create_table :entradas do |t|
      t.string :texto
      t.datetime :fecha
      t.integer :parentId
      t.references :Usuario, foreign_key: true

      t.timestamps
    end
  end
end
