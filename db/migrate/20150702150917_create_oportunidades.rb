class CreateOportunidades < ActiveRecord::Migration
  def change
    create_table :oportunidades do |t|
      t.string :nome
      t.text :descricao
      t.text :observacao
      t.string :status
      t.decimal :receita_estimada
      t.string :probabilidade
      t.string :etapa
      t.text :observacao

      t.timestamps null: false
    end
  end
end
