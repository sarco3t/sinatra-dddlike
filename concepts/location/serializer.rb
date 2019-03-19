class Location::Serializer < JSONAPI::Serializable::Resource
  type 'locations'

  attributes :name, :value
end
