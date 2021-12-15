class CreateVisits < ActiveRecord::Migration[6.1]
  def change
    create_table :visits do |t|
      t.date :date
      t.time :time
      t.string :problem

      t.timestamps
    end
  end
end
