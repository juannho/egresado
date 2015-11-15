class CreatePagos < ActiveRecord::Migration
  def change
    create_table :pagos do |t|
      t.integer :monto
      t.integer :numero_vistas
      t.references :empresa, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
