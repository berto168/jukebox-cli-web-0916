#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => '/Users/ralin/Development/code/jukebox-cli-web-0916/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/Users/ralin/Development/code/jukebox-cli-web-0916/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/Users/ralin/Development/code/jukebox-cli-web-0916/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/Users/ralin/Development/code/jukebox-cli-web-0916/audio/Emerald-Park/04.mp3',
"Wolf" => '/Users/ralin/Development/code/jukebox-cli-web-0916/audio/Emerald-Park/05.mp3',
"Blue" => '/Users/ralin/Development/code/jukebox-cli-web-0916/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/Users/ralin/Development/code/jukebox-cli-web-0916/audio/Emerald-Park/07.mp3'
}

def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end



def list(my_songs)
  my_songs.each do |name, file_location|
    puts "#{name}"
  end
end


def play(my_songs)
  puts "Please enter a song name:"
  response = gets.chomp
  if my_songs.include?(response)
    system "open #{my_songs[response]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  puts "Please enter a command:"
  response = gets.chomp
  until response == "exit"
    if response == "list"
      list(my_songs)
    elsif response == "play"
      play(my_songs)
    elsif response == "help"
      help
    end
    puts "Please enter a command:"
    response = gets.chomp
  end
  exit_jukebox
end
