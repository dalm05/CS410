class CreateQuestionnaires < ActiveRecord::Migration
  def change
    create_table :questionnaires do |t|
      t.string :question
      t.string :questionType, default: "Bullet"
      t.string :response
      t.string :course 
      t.integer :section 
      t.integer :semester
      t.string :instructor  
      t.timestamps
    end
  end
end
