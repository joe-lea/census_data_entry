class AddOccupationToChildren < ActiveRecord::Migration
  def change
    add_column :children, :occupation, :string
  end
end
