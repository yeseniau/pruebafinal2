class Pet < ApplicationRecord
  belongs_to :client
  has_many :appoiments
  has_many :medicalrecords
end
