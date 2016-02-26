class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :label
	has_many :albums
end