class RemoveStockFromMedicalCareMedicaments < ActiveRecord::Migration[7.0]
  def change
    remove_column :medical_care_medicaments, :stock
  end
end
