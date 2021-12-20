class CreateDoctorCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :doctor_categories do |t|
      t.references :category, null: false, foreign_key: true
      t.references :doc, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
