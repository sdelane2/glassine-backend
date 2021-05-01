class HandlerSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :date_of_birth, :description, :city, :thumbnail, :hour_rate
end
