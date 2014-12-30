class AddFieldsToActions < ActiveRecord::Migration
  def change
    add_column :actions, :template_id, :integer
  end
end
