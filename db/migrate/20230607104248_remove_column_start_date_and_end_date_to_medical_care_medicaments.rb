class RemoveColumnStartDateAndEndDateToMedicalCareMedicaments < ActiveRecord::Migration[7.0]
  def change
    remove_column :medical_care_medicaments, :start_date
    remove_column :medical_care_medicaments, :end_date
  end
end
