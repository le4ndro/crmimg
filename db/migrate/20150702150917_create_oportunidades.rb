class CreateOportunidades < ActiveRecord::Migration
  def change
    create_table :oportunidades do |t|
      t.string :nome
      t.string :descricao
      t.text :observacao
      t.string :status
      t.decimal :receita_estimada
      t.string :probabilidade

      t.timestamps null: false
    end
  end
end
