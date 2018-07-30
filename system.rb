class System

  def initialize()
    @bodies = []
  end

  def add(body)
    @bodies.push(body)
  end

  def total_mass
    total = 0
    @bodies.each do |body|
      total += body.mass
      return total_mass
    end
  end

  def bodies
    @@bodies
  end

end

class Body < System
  attr_accessor :name, :mass
  def initialize(name, mass)
    @name = name
    @mass = mass
  end
end

class Planets < Body
  attr_accessor :mass, :day, :year
  def initialize(name, mass, day, year)
    @name = name
    @mass = mass
    @day = day
    @year = year
  end
end

class Stars < Body
  attr_accessor :mass, :month
  def initialize(name, mass, type)
    @name = name
    @mass = mass
    @type = type
  end
end

class Moon < Body
  attr_accessor :mass, :month
  def initialize(name, mass, month)
    @month = month
    @name = name
    @mass = mass
  end

  def planet(name, mass, day, year)
    @planet = Planet.new(name, mass, day, year)
  end
end

system = System.new
sun = Stars.new('the sun', 1000, 'g-type')
earth = Planets.new('Earth', 1000, 45, 256)
moon = Moon.new('moon', 1000, 1)
system.add(sun)
system.add(earth)
system.add(moon)
p system
p system.total_mass
