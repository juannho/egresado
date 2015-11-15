class CreatePortafolios < ActiveRecord::Migration
  def change
    create_table :portafolios do |t|
      t.string :nombre
      t.string :archivo
      t.string :descripcion
      t.references :titulado, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
