class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :surname
      t.string :forename
      t.integer :age
      t.string :house_number
      t.string :street
      t.string :occupation
      t.string :industry
      t.string :place_of_birth
      t.string :position_in_household
      t.integer :relationship_status_id

      t.timestamps
    end
  end
end
