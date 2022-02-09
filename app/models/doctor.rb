class Doctor < ApplicationRecord 
    belongs_to :city
    has_many :appointments 
    has_many :specialty_doctors
    has_many :patients, through: :appointments
    has_many :specialtys, through: :specialty_doctors
end 

