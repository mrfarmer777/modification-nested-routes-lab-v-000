class Artist < ActiveRecord::Base
  has_many :songs

  def self.artist_select
    select_tag "song[artist_id]", options_for_select(Artist.all.collect{|a| [a.name, a.id]})
    #collection_select(:song, :artist_id, Artist.all, :id, :name))
  end
end
