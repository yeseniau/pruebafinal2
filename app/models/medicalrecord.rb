class Medicalrecord < ApplicationRecord
  belongs_to :pet
  belongs_to :appointment
end
