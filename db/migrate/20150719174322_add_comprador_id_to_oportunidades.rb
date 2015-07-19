class AddCompradorIdToOportunidades < ActiveRecord::Migration
  def change
    add_column :oportunidades, :comprador_id, :integer
  end
end
