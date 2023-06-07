class Medicament < ApplicationRecord
  has_many :medical_care_medicaments

  attr_accessor :increment_value
end
