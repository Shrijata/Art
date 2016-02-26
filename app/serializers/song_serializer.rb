class SongSerializer < ActiveModel::Serializer
  attributes :id, :name, :release_date, :lyrics
end