# frozen_string_literal: true

class AddCreatorNameToVisits < ActiveRecord::Migration[6.1]
  def change
    add_column :visits, :creator_name, :string
  end
end
