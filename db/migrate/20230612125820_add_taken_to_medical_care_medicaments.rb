class AddTakenToMedicalCareMedicaments < ActiveRecord::Migration[7.0]
  def change
    add_column :medical_care_medicaments, :morning, :boolean, default: false
    add_column :medical_care_medicaments, :noon, :boolean, default: false
    add_column :medical_care_medicaments, :evening, :boolean, default: false
  end
end
