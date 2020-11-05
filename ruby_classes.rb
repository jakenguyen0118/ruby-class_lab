color_array = ['blue', 'red', 'black', 'white']

class Muppets
    attr_accessor :name
    attr_accessor :color

    def initialize(name, color)
        @name = "This muppet is called #{name}"
        @color = "This muppet is the color #{color.sample}"
    end

    def honk
        p "#{@name} is making a honking sound!"
    end

    def flail
        p "#{@name} is flailing its arms!"
    end
end

# muppet_one = Muppets.new('one', color_array)
# p muppet_one.name
# p muppet_one.color

# muppet_two = Muppets.new('two', color_array)
# p muppet_two.name
# p muppet_two.color

# q = Muppets.new("K-Rad", color_array)
# q.honk
# q.flail

bird_adj = ['dumb', 'smart', 'coo coo', 'lazy']
bird_species = ['Belted Kingfisher', 'Yellow-Billed Cuckoo', 'White-Cheeked Pintail', 'Cinnamon Teal', 'Lesser Scaup', 'Bufflehead', 'Common Goldeneye', 'Fulvous Whistling Duck', 'Hooded Merganser', 'White-Winged Scoter', 'Chimney Swift', 'Rufous Hummingbird', 'Chuck-Wills-Widow', 'Whip-Poor-Will', 'Albatross', 'Ruddy Turnstone', 'Piping Plover', 'Killdeer', 'Laughing Gull', 'Marbled Godwit', 'Least Tern', 'New World Warbler']

class Birds
    attr_accessor :adj
    attr_accessor :name
    attr_accessor :species

    def initialize(name, adj, species)
        @name = name
        @adj = adj
        @species = species
    end

    def hungry 
        "#{@name} wants some regurgitated worms!"
    end

    def fly
        "Flap! #{@name} is taking flight!"
    end
end

# bird_one = Birds.new('one', bird_adj, bird_species)
# p bird_one.hungry
# p bird_one.fly

# bird_two = Birds.new('two', bird_adj, bird_species)
# bird_two

class Dessert
    attr_accessor :name
    attr_accessor :sugar_content

    def initialize(name, sugar_content)
        @name = name
        @sugar_content = sugar_content
    end

    def eat
        "Yum! This #{@name} is sooooo delicious!"
    end
end

class Pie < Dessert

end
my_pie = Pie.new('apple pie', '100')
# p my_pie.eat

class DeepFriedDessert < Dessert
    def eat
        "Yum! This #{@name} is sooo...ack! ugh! *heart-attack*"
    end
end
my_deep_fried_dessert = DeepFriedDessert.new('fried dough', '2000')
# p my_deep_fried_dessert.eat

class IceCream < Dessert
    def initialize(name, toppings)
        super
    end

    def eat
        super
    end
end
my_ice_cream = IceCream.new('coffee oreo', 'sprinkles')
# p my_ice_cream.eat

class Universe
    def initialize(item1, item2, item3)
        @item = [item1, item2, item3]
        @expanding = true
        @conservation = true
        @crunched = false
    end

    def see_all_things
        "#{@item}"
    end

    def create(new_item)
        if "#{@conservation}" == true
            "#{@item.replace(new_item)}"
        else
            "#{@item.push(new_item)}"
        end
    end
end

my_universe = Universe.new("sun", "stars", "earth")
# p my_universe.see_all_things
p my_universe.create('mosquito')