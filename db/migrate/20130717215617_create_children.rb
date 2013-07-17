class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :surname
      t.string :forename
      t.integer :age
      t.string :gender
      t.boolean :in_school
      t.boolean :in_work
      t.integer :parent_id

      t.timestamps
    end
  end
end
