class SongsController < ApplicationController

  def create
      song = Song.new(song_params)
      song.playlist = Playlist.find(params[:playlist_id])
      if song.save
        redirect_to playlist_path(song.playlist), notice: 'Canción Guardado'
      else
        redirect_to playlist_path(song.playlist), notice: 'No se pudo guardar la canción'
      end
    end


    def destroy
     song = Song.find(params[:id])
     playlist = song.playlist
     song.destroy
     redirect_to playlist_path(song.playlist), notice: 'Comentario eliminado con exito'
     end



private


def song_params
params.require(:song).permit(:name, :artist)

end
end
