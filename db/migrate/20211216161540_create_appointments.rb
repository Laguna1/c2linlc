# frozen_string_literal: true

class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.string :author_name
      t.text :recipe
      t.references :visit, null: false, foreign_key: true

      t.timestamps
    end
  end
end
