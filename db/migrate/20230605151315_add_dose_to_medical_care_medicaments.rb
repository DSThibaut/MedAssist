class AddDoseToMedicalCareMedicaments < ActiveRecord::Migration[7.0]
  def change
    add_column :medical_care_medicaments, :dose, :float
  end
end
