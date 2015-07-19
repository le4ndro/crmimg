class CreateClientePotencials < ActiveRecord::Migration
  def change
    create_table :cliente_potencials do |t|
      t.string :nome
      t.text :descricao
      t.string :website
      t.string :setor
      t.string :porte
      t.integer :numero_funcionarios
      t.decimal :faturamento
      t.text :observacao

      t.timestamps null: false
    end
  end
end
