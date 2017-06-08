class ChoreSerializer < ActiveModel::Serializer
  attributes :id, :chore_name, :directions, :day_of_week
end
