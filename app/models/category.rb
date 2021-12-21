# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :users

  validates :name, presence: true, uniqueness: true, length: { minimum: 3, maximum: 25 }
end
