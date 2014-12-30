class ChangeFieldsToActions < ActiveRecord::Migration
  def change
    remove_column :actions, :template_id
    add_column :actions, :current_template_id, :integer
    add_column :actions, :next_template_id, :integer
  end
end
