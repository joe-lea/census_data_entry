class Child < ActiveRecord::Base
  belongs_to :parent, class_name: "Person", foreign_key: "parent_id"
end
