json.extract! appointment, :id, :visit_id, :receipt, :closing_date, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
