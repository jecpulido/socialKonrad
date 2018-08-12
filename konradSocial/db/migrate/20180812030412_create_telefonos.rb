class CreateTelefonos < ActiveRecord::Migration[5.2]
  def change
    create_table :telefonos do |t|
      t.string :numero
      t.references :Usuario, foreign_key: true

      t.timestamps
    end
  end
end
