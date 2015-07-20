class AddOportunidadeIdToAtividades < ActiveRecord::Migration
  def change
    add_column :atividades, :oportunidade_id, :integer
  end
end
