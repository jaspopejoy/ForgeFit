class CreateMetrics < ActiveRecord::Migration[8.1]
  def change
    create_table :metrics do |t|
      t.references :fitness_goal, null: false, foreign_key: true
      t.string :name
      t.string :unit
      t.string :metric_type
      t.decimal :target_value
      t.integer :sets
      t.integer :reps
      t.decimal :weight

      t.timestamps
    end
  end
end
