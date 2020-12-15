require 'pry'

class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select{|painting| painting.artist == self}
  end

  def galleries
    paintings.map(&:gallery).uniq
  end

  def cities
    galleries.map(&:city).uniq
  end

  def self.total_experience
    self.all.sum(&:years_experience)
  end

  def self.most_prolific
    binding.pry
    # years of experience / num_of_paintings (paintings.all.count)

    # similar to: paintings.max{|painting1, painting2| painting1.count <=> painting2.count} . . . max_by?
    # ANSWER: Hopper, years_experience/paintings.count = 16 (lowest number is most prolific)

    self.all.min{|artist1, artist2| artist1.years_experience/artist1.paintings.count <=> artist2.years_experience/artist2.paintings.count}

    # self.all.inject {|memo, artist| (artist.years_experience/artist.paintings.length) < (memo.years_experience/memo.paintings.length) ? artist : memo}        
  end

  def create_painting(title, price, gallery)
    # binding.pry
    Painting.new(title, self.name, price, gallery)
  end

end


### DONE ###

  # * `Artist.all`
  #     * Returns an `array` of all the artists

  #   * `Artist#paintings`
#     * Returns an `array` all the paintings by an artist

#   * `Artist#galleries`
#     * Returns an `array` of all the galleries that an artist has paintings in

#   * `Artist#cities`
#     * Return an `array` of all cities that an artist has paintings in

#   * `Artist.total_experience`
#     * Returns an `integer` that is the total years of experience of all artists

#   * `Artist.most_prolific`
#     * Returns an `instance` of the artist with the highest amount of paintings per year of experience.

#   * `Artist#create_painting`
#     * Given the arguments of `title`, `price` and `gallery`, creates a new painting belonging to that artist
