class Medicament < ApplicationRecord
  has_many :medical_care_medicaments, through: :medical_care
  UNITS = ["Comprimé", "Ampoule", "Poudre", "Injection", "Pommade", "Suppositoire"]
  attr_accessor :increment_value
end
