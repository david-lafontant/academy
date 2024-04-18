# frozen_string_literal: true

json.extract! enrollement, :id, :user_id, :course_id, :created_at, :updated_at
json.url enrollement_url(enrollement, format: :json)
