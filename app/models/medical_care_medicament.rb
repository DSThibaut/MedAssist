class MedicalCareMedicament < ApplicationRecord
  belongs_to :medical_care
  belongs_to :medicament
  accepts_nested_attributes_for :medicament
  enum :frequence, [ :jour, :semaine, :mois ]
end
