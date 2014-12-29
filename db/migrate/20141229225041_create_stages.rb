class CreateStages < ActiveRecord::Migration
  def change
    create_table :stages do |t|
      t.integer :stage_number
      t.integer :template_number
      t.timestamps
    end
  end
end
