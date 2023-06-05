class CreateMedicalCareMedicaments < ActiveRecord::Migration[7.0]
  def change
    create_table :medical_care_medicaments do |t|
      t.integer :frequence
      t.integer :stock
      t.references :medical_care, null: false, foreign_key: true
      t.references :medicament, null: false, foreign_key: true

      t.timestamps
    end
  end
end
