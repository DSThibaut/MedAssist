class Medicament < ApplicationRecord
  has_many :medical_care_medicaments
  UNITS = ["Comprimé", "Ampoule", "Poudre", "Injection", "Pommade", "Suppositoire"]
end
