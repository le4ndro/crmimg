class CreateAtividades < ActiveRecord::Migration
  def change
    create_table :atividades do |t|
      t.string :nome
      t.string :tipo
      t.text :descricao
      t.text :observacao
      t.text :acompanhamento
      t.string :status
      t.string :prioridade
      t.datetime :data_prevista_inicio
      t.datetime :data_prevista_fim
      t.datetime :data_realizada
      #t.references :oportunidade, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
