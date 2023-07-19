class WorkoutsSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id, :title, :description :muscle_group_name

  has_many :workout_variants

end


