class WorkoutSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id, :title, :description

  has_many :workout_variants

end
