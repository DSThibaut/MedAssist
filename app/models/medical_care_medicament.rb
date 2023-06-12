class MedicalCareMedicament < ApplicationRecord
  belongs_to :medical_care
  belongs_to :medicament
  accepts_nested_attributes_for :medicament

  attr_accessor :taken
end
