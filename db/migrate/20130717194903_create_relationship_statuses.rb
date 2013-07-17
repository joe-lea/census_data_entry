class CreateRelationshipStatuses < ActiveRecord::Migration
  def change
    create_table :relationship_statuses do |t|
      t.string :description

      t.timestamps
    end
  end
end
