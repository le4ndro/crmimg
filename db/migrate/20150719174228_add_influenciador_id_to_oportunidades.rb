class AddInfluenciadorIdToOportunidades < ActiveRecord::Migration
  def change
    add_column :oportunidades, :influenciador_id, :integer
  end
end
