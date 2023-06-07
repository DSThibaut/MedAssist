class AddColumnStartDateAndEndDateToMedicalCareMedicaments < ActiveRecord::Migration[7.0]
  def change
    add_column :medical_care_medicaments, :start_date, :date
    add_column :medical_care_medicaments, :end_date, :date
  end
end
