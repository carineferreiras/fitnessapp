class WorkoutSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :workout_id, :title, :description

  has_many :workout_variants

  def workout_id 
    "#{self.object.id}"
  end 
end
