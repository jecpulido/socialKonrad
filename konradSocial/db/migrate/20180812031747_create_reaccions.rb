class CreateReaccions < ActiveRecord::Migration[5.2]
  def change
    create_table :reaccions do |t|
      t.references :Entrada, foreign_key: true
      t.references :Usuario, foreign_key: true

      t.timestamps
    end
  end
end
