class AlbumSerializer < ActiveModel::Serializer
  attributes :id, :name, :release_date, :name_with_artist

  has_many :songs

  def name_with_artist
    "#{object.name} from #{object.artist.name}"
  end

end