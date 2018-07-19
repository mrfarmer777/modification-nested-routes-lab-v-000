module ArtistsHelper
  def display_artist(song)
    song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end

  def self.artist_select
    select_tag "song[artist_id]", options_for_select(Artist.all.collect{|a| [a.name, a.id]})
    #collection_select(:song, :artist_id, Artist.all, :id, :name))
  end


end
