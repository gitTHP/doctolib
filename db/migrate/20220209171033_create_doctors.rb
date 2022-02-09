class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|

      t.string :firstname 
      t.string :lastname
      t.string :zipcode
    end
  end
end
