class CreateEnderecos < ActiveRecord::Migration
  def change
    create_table :enderecos do |t|
      t.string :nome
      t.string :logradouro
      t.string :complemento
      t.string :bairro
      t.string :cidade
      t.string :uf
      t.string :cep
      t.references :cliente_potencial, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
