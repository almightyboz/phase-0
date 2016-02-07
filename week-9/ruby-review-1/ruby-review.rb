# Create a Playlist from Driver Code

# I worked on this challenge with: Aaron Opfahl.
# I spent 2.5 hours on this challenge.


# Pseudocode

### Playlist methods:
### takes splat number of elements
#initialize
# add
# num of tracks
# remove
# includes
# play_all
# display

### song methods:
### takes 2 arguments
#initialize
# play


# Initial Solution

# class Song

#   def initialize(track, artist)
#     @track = track
#     @artist = artist
#   end

#   def play
#     p "And next on the hopper, we have the new hit single by #{@artist} that's burning up the charts. [airhorn sound]. This iiiis, #{@track}!"
#   end

#   def display
#     p @artist
#     p @track
#   end

# end

# class Playlist < Song

#   def initialize(*tracks)
#     @tracks = tracks
#     # @the_list = Song.new(@tracks)
#   end

#   def add(*new_song)
#     @tracks = @tracks.concat(new_song)
#     p @tracks
#   end

#   def num_of_tracks
#     return @tracks.length
#   end

#   def remove(song_to_remove)
#     p song_to_remove
#     @tracks.each do |song|
#       if song == song_to_remove
#         @tracks.delete(song)
#       end
#     end
#   end

#   def includes?(song_to_check)
#     # p song_to_check
#     @tracks.each do |song|
#       if song == song_to_check
#         return true
#       end
#     end
#     false
#   end

#   def play_all
#    @tracks.each do |song|
#      song.play
#    end
#   end

#   def display
#     @tracks.each do |song|
#       song.display
#     end
#   end

# end


# Refactored Solution

class Song

  attr_accessor :track,  :artist

  def initialize(track, artist)
    @track = track
    @artist = artist
  end

  def play
    p "And next on the hopper, we have the new hit single by #{@artist} that's burning up the charts. [airhorn sound]. This iiiis, #{@track}!"
  end

end



class Playlist < Song

  def initialize(*tracks)
    @tracks = tracks
  end

  def add(*new_song)
    @tracks.concat(new_song)
    display
  end

  def num_of_tracks
    return @tracks.length
  end

  def remove(song_to_remove)
    @tracks.each do |song|
      if song == song_to_remove
        @tracks.delete(song)
      end
    end
  end

  def includes?(song_to_check)
    @tracks.each do |song|
      if song == song_to_check
        return true
      end
    end
    false
  end

  def play_all
   @tracks.each do |song|
     p "And next on the hopper, we have the new hit single by #{song.artist} that's burning up the charts. [airhorn sound]. This iiiis, #{song.track}!"
   end
  end

  def display
    p "Now I shall display..."
    @tracks.each do |song|
      p song.track, "is the track"
      p song.artist, "is the artist"
    end
  end

end




# DRIVER CODE AND TESTS GO BELOW THIS LINE

# creating an instance of a class called Song
# arguments are name, artist
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace")
going_under = Song.new("Going Under", "Evanescence")

# taking variables from abvoe line, passing in as arguments
# creating new instance of playlist from there
# p my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)
my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)


lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")

# # add new tracks to the playlist
my_playlist.add(lying_from_you, angels)
# p "Now, the revised playlist..."
# p my_playlist

p my_playlist.num_of_tracks == 5
going_under.play #How would you model a song getting "played" in Ruby? I used `puts` and `sleep`. You can model this however you want.
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display


# DRIVER CODE AND TESTS GO BELOW THIS LINE

# creating an instance of a class called Song
# arguments are name, artist
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace")
going_under = Song.new("Going Under", "Evanescence")

# taking variables from abvoe line, passing in as arguments
# creating new instance of playlist from there
# p my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)
my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)


lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")

# # add new tracks to the playlist
my_playlist.add(lying_from_you, angels)
# p "Now, the revised playlist..."
# p my_playlist

p my_playlist.num_of_tracks == 5
going_under.play #How would you model a song getting "played" in Ruby? I used `puts` and `sleep`. You can model this however you want.
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display


# Reflection

###### What concepts did you review in this challenge?
# Reading error messages and using accessors. Also programming without well defined pseudocode, which worked surprisingly well.
###### What is still confusing to you about Ruby?
# Inheritance confuses me still. I haven't had a chance to use it in a detailed way, so I'm less sure of when I'll need it.
###### What are you going to study to get more prepared for Phase 1?
# I am going to skim more of Well Grounded Rubyist, and practice pseudocoding challenges as well.