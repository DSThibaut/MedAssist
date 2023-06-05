class CreateMedicalCares < ActiveRecord::Migration[7.0]
  def change
    create_table :medical_cares do |t|
      t.string :title
      t.string :description
      t.string :pathology
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
