class CreateVistos < ActiveRecord::Migration
  def change
    create_table :vistos do |t|
      t.references :empresa, index: true, foreign_key: true
      t.references :titulado, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
