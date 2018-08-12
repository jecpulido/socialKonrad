class CreateRelacions < ActiveRecord::Migration[5.2]
  def change
    create_table :relacions do |t|
      t.references :Usuario, foreign_key: true
      t.integer :usuario2
      t.boolean :isVNombre
      t.boolean :isVApellido
      t.boolean :isVFechaNac
      t.boolean :isVTelefono
      t.boolean :isVCorreo

      t.timestamps
    end
  end
end
