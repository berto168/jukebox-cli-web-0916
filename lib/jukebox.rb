songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def list(songs)
  songs.each_with_index { |title, x| puts "#{x + 1}. #{title}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.chomp
  if response.to_i > 0
    response = response.to_i
  end
  if songs.include?(response)
    puts "Playing <#{response}>"
  elsif (1..songs.length).include?(response)
    puts "Playing <#{songs[response - 1]}>"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  response = gets.chomp
  until response == "exit"
    if response == "list"
      list(songs)
    elsif response == "play"
      play(songs)
    elsif response == "help"
      help
    end
    puts "Please enter a command:"
    response = gets.chomp
  end
  exit_jukebox
end
