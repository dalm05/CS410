class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :question
      t.string :type
      t.date :released_on
      t.integer :publisher_id
      t.integer :rating
      t.boolean :discontinued, default: false, null: false

      t.timestamps
    end
  end
end
