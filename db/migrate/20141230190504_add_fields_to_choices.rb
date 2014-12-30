class AddFieldsToChoices < ActiveRecord::Migration
  def change
    add_column :choices, :action_id, :integer
  end
end
