class Relations < ActiveRecord::Migration[5.2]
  def change
    add_reference :appointments, :doctor, foreign_key: true
    add_reference :appointments, :patient, foreign_key: true 
    add_reference :specialty_doctors, :specialty, foreign_key: true 
    add_reference :specialty_doctors, :doctor, foreign_key: true 
    add_reference :doctors, :city, foreign_key: true
  end
end
