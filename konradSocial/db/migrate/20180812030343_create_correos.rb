class CreateCorreos < ActiveRecord::Migration[5.2]
  def change
    create_table :correos do |t|
      t.string :correo
      t.references :Usuario, foreign_key: true

      t.timestamps
    end
  end
end
