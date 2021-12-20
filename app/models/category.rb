# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :doctor_categories
  has_many :docs, through: :doctor_categories

  validates :name, presence: true, uniqueness: true, length: { minimum: 3, maximum: 25 }
end
