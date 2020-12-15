require_relative '../config/environment.rb'

### Models ###
# artist -< painting >- gallery

##ARTIST
monet = Artist.new("Claude Monet", 100)
hopper = Artist.new("Edward Hopper", 50)
kahlo = Artist.new("Frida Kahlo", 77)
david = Artist.new("Jacques Louis David", 200)
van_gogh = Artist.new("Vincent Van Gogh", 220)

##GALLERY
whitney = Gallery.new("The Whitney", "New York City")
met = Gallery.new("Met Museum", "New York City")
moma =  Gallery.new("MoMA", "New York City")
chicago = Gallery.new("Art Institute of Chicago", "Chicago")

##PAINTING
water_lilies = Painting.new("The Water Lilies", monet, 20000, met)
nighthawks = Painting.new("Nighthawks", hopper, 15000, whitney)
two_fridas = Painting.new("The Two Fridas", kahlo, 30000, whitney)
morning_sun = Painting.new("Morning Sun", hopper, 10000, whitney)
death_socrates = Painting.new("The Death of Socrates", david, 30000, met)
starry_night = Painting.new("Starry Night",van_gogh, 100000, moma)
room_brooklyn = Painting.new("A Room in Brooklyn", hopper, 15000, moma)
stack_wheat = Painting.new("Stack of Wheat", monet, 65000, chicago)

# whitney.most_expensive_painting
# Artist.most_prolific
# kahlo.create_painting("Self Portrait with Thorn Necklace", 50000, moma)


binding.pry

puts "Bob Ross rules."
