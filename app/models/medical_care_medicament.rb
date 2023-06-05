class MedicalCareMedicament < ApplicationRecord
  belongs_to :medical_care
  belongs_to :medicament

  enum frequence: [:jour, :semaine, :mensuel, :annuel]
end
