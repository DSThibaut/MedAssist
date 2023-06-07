class AddColumnStartDateAndEndDateToMedicalCares < ActiveRecord::Migration[7.0]
  def change
    add_column :medical_cares, :start_date, :date
    add_column :medical_cares, :end_date, :date
  end
end
