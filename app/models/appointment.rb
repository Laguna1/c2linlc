# frozen_string_literal: true

class Appointment < ApplicationRecord
  belongs_to :visit
  belongs_to :creator, class_name: 'User'
  belongs_to :receiver, class_name: 'User'
end
