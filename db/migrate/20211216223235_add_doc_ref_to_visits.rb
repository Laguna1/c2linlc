# frozen_string_literal: true

class AddDocRefToVisits < ActiveRecord::Migration[6.1]
  def change
    add_reference :visits, :doc, foreign_key: { to_table: :users }
  end
end
