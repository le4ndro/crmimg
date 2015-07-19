class AddDecisorIdToOportunidades < ActiveRecord::Migration
  def change
    add_column :oportunidades, :decisor_id, :integer
  end
end
