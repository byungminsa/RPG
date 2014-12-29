class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
      t.integer :template_number
      t.string :action_one
      t.string :action_two
      t.string :action_three
      t.string :action_four
      t.string :action_five
      t.string :img_src
      t.text :img_text
      t.timestamps
    end
  end
end
