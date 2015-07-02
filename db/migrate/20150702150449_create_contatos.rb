class CreateContatos < ActiveRecord::Migration
  def change
    create_table :contatos do |t|
      t.string :nome
      t.string :cargo
      t.string :telefone
      t.string :celular
      t.string :email
      t.string :facebook
      t.string :linkedin
      t.string :googleplus
      t.references :cliente_potencial, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
