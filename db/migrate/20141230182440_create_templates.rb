class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
      t.string "img_src"
      t.text "img_text"
      t.timestamps
    end
  end
end
