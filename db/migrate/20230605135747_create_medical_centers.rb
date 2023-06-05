class CreateMedicalCenters < ActiveRecord::Migration[7.0]
  def change
    create_table :medical_centers do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps
    end
  end
end
