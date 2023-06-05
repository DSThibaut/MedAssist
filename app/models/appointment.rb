class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :medical_center
end
