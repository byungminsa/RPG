class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.integer :choice_number
      t.integer :from_stage_number
      t.integer :to_stage_number
      t.timestamps
    end
  end
end
