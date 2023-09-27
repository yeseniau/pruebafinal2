class Appointment < ApplicationRecord
  belongs_to :vet
  belongs_to :pet
  has_and_belongs_to_many :medicalrecords
end
