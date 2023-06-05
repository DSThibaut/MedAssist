class MedicalCareMedicament < ApplicationRecord
  belongs_to :medical_care
  belongs_to :medicament
end
