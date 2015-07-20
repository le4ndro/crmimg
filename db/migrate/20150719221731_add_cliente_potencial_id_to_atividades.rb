class AddClientePotencialIdToAtividades < ActiveRecord::Migration
  def change
    add_column :atividades, :cliente_potencial_id, :integer
  end
end
