class Cd_organizer

  @@all_cds = []


  def initialize(album, artist)
    @artist = artist
    @album = album
  end

  def Cd_organizer.clear
    @@all_cds =[]
  end

  def Cd_organizer.add_cd(artist, title)
    album = Artist.new(artist, title)
    @@all_cds << album
  end

  def artist
    @artist
  end

  def album
    @album
  end

  def Cd_organizer.display_cds
    @@all_cds.each_with_index do |item, index|
      puts item.album
      puts item.artist
    end
  end

  def Cd_organizer.all
    @@all_cds
  end

  def Cd_organizer.search_artist(user_artist)
    @@all_cds.each_with_index do |item, index|
      if item.artist == user_artist
        puts item.artist
        puts item.name
      end
    end
  end

    def search_album(user_album)
      @@all_cds.each_with_index do |item, index|
        if item.album == user_album
          puts item.artist
          puts item.name
          end
        end
      end

end


