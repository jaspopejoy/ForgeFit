class CreateFitnessGoals < ActiveRecord::Migration[8.1]
  def change
    create_table :fitness_goals do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.string :status
      t.date :target_date

      t.timestamps
    end
  end
end
