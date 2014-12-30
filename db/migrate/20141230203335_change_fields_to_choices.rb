class ChangeFieldsToChoices < ActiveRecord::Migration
  def change
    remove_column :choices, :action_id
    add_column :choices, :action_one_id, :integer
    add_column :choices, :action_two_id, :integer
    add_column :choices, :action_three_id, :integer
    add_column :choices, :action_four_id, :integer
    add_column :choices, :action_five_id, :integer
  end
end
