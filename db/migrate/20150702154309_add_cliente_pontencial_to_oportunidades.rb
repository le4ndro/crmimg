class AddClientePontencialToOportunidades < ActiveRecord::Migration
  def change
    add_reference :oportunidades, :cliente_potencial, index: true, foreign_key: true
  end
end
