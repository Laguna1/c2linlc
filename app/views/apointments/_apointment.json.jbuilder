json.extract! apointment, :id, :visit_id, :receipt, :closing_date, :created_at, :updated_at
json.url apointment_url(apointment, format: :json)
