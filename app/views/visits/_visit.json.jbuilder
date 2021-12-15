# frozen_string_literal: true

json.extract! visit, :id, :date, :time, :problem, :created_at, :updated_at
json.url visit_url(visit, format: :json)
