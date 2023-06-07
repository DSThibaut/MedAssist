class MedicalCare < ApplicationRecord
  belongs_to :user
  has_many :medical_care_medicaments, dependent: :destroy
  has_many :medicaments, through: :medical_care_medicaments
  accepts_nested_attributes_for :medical_care_medicaments
end
