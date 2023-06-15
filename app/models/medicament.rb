class Medicament < ApplicationRecord
  has_many :medical_care_medicaments, through: :medical_care
  UNITS = ["Comprimé", "Gellule", "Pommade", "Poudre", "Suppositoire", "Gouttes"]
  attr_accessor :increment_value
end
