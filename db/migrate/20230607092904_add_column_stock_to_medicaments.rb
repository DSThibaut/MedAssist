class AddColumnStockToMedicaments < ActiveRecord::Migration[7.0]
  def change
    add_column :medicaments, :stock, :integer
  end
end
