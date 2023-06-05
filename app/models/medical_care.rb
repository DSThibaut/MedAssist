class MedicalCare < ApplicationRecord
  belongs_to :user
  has_many :medical_care_medicaments
end
