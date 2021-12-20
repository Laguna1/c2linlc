# frozen_string_literal: true

class DoctorCategory < ApplicationRecord
  belongs_to :category
  belongs_to :doc, class_name: 'User', foreign_key: 'doc_id'
end
