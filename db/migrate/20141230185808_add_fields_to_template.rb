class AddFieldsToTemplate < ActiveRecord::Migration
  def change
    add_column :templates, :choice_id, :integer
  end
end
