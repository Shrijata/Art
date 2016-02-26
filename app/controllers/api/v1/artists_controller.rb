class Api::V1::ArtistsController < Api::V1::ApplicationController
before_action :authenticate_user!  

def index
	serializer_responder(Artist.all,
	serializer: ArtistSerializer)
end

def create
	serializer_responder(Artist.create(artist_params),
	serializer: ArtistSerializer)
end

def new
	serializer_responder(Artist.create(artist_params),
	serializer: ArtistSerializer)
end

def update
	serializer_responder(Artist.find(params[:id]).update(artist_params),
	serializer: ArtistSerializer)
end

def show
	serializer_responder(Artist.find(params[:id]),
	serializer: ArtistSerializer)
end

def destroy
serializer_responder(
Artist.find(params[:id]).destroy)
end

private
  def artist_params
    params.permit(:id,:name,:label)
  end
end