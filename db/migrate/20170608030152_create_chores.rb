class CreateChores < ActiveRecord::Migration[5.0]
  def change
    create_table :chores do |t|
      t.string :chore_name
      t.string :directions
      t.string :day_of_week

      t.timestamps
    end
  end
end
