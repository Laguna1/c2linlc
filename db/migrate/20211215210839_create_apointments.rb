class CreateApointments < ActiveRecord::Migration[6.1]
  def change
    create_table :apointments do |t|
      t.references :visit, null: false, foreign_key: true
      t.text :receipt
      t.datetime :closing_date

      t.timestamps
    end
  end
end
