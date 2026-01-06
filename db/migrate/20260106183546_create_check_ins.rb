class CreateCheckIns < ActiveRecord::Migration[8.1]
  def change
    create_table :check_ins do |t|
      t.references :metric, null: false, foreign_key: true
      t.decimal :value
      t.integer :sets
      t.integer :reps
      t.decimal :weight
      t.text :notes
      t.date :checked_in_on

      t.timestamps
    end
  end
end
