class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.date :date
      t.references :user, null: false, foreign_key: true
      t.references :medical_center, null: false, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
