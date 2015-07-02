class CreateClientePotencials < ActiveRecord::Migration
  def change
    create_table :cliente_potencials do |t|
      t.string :nome
      t.text :descricao
      t.string :website
      t.text :observacao

      t.timestamps null: false
    end
  end
end
