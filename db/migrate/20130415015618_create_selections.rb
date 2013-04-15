class CreateSelections < ActiveRecord::Migration
  def change
    create_table :selections do |t|
      t.string :question
      t.string :choice
      t.timestamps
    end
  end
end
