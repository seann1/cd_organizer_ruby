require './lib/cd_organizer'
require './lib/artist'



def main_menu
  puts"
║░█░█░║░█░█░█░║░█░█░║
║░█░█░║░█░█░█░║░█░█░║
║░║░║░║░║░║░║░║░║░║░║
╚═╩═╩═╩═╩═╩═╩═╩═╩═╩═╝
    CD ORGANIZER

  'v' view all cds
  ______________________
  's' search
  ______________________
  'a' add cd
  ______________________
  'x' exit
  ______________________"
  main_choice = gets.chomp

  if main_choice == 'v'
    view_cds
  elsif main_choice == 's'
    search_cds
  elsif main_choice == 'a'
    add_cd
  elsif main_choice == 'x'
    puts "Goodbye"
  else
    puts "That choice was invalid"
  end
end

  def view_cds
   Cd_organizer.display_cds
   main_menu
  end

  def search_cds
    puts "Would you like to search for 'artist' or 'album'?"
    user_choice = gets.chomp

      if user_choice == "artist"
        puts "enter the artist name"
        user_artist = gets.chomp
        puts "\n"
        Cd_organizer.search_artist(user_artist)
        main_menu
      elsif user_choice == "album"
        puts "enter the album name"
        user_album = gets.chomp
        Cd_organizer.search_artist(user_album)
        main_menu
      else
        puts "not a valid choice"
        main_menu
      end



  end

  def add_cd
    puts "enter the artist name"
    user_artist = gets.chomp
    puts "enter album name"
    user_album = gets.chomp
    Cd_organizer.add_cd(user_artist, user_album)
    main_menu
  end

  main_menu



