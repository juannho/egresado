class CreateRecomendaciones < ActiveRecord::Migration
  def change
    create_table :recomendaciones do |t|
      t.string :nombre
      t.string :cargo
      t.string :detalle
      t.references :titulado, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
