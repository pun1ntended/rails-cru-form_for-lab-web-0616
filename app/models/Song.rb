class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre
  def genre_name
    if genre
      self.genre.name
    else
      ""
    end
  end
  def genre_name=(genre_name)
    genre = Genre.find_or_create_by(:name => genre_name)
    self.genre = genre
  end

  def artist_name
    if artist
      self.artist.name
    else
      ""
    end
  end
  def artist_name=(artist_name)
    artist = Artist.find_or_create_by(:name => artist_name)
  end
  
end