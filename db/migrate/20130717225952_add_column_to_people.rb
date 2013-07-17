class AddColumnToPeople < ActiveRecord::Migration
  def change
    add_column :people, :husbands_occupation, :string
  end
end
