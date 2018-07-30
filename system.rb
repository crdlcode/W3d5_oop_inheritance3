class System
  def intialize
    @bodies = []
  end

  def add(body)
    @bodies.push(body)
  end

  def total_mass
    total  = 0
    @bodies.each do |body|
      total_mass += body.mass
    end
    return total_mass
  end

  def bodies
    @@bodies
  end

end

class Body < System
  attr_accessor :name, :mass
  def intialize(name, mass)
    @name = name
    @mass = mass
  end
end

class Planets < Body
  attr_accessor :mass, :day, :year
  def intialize(name, mass, day, year)
    @name = name
    @mass = mass
    @day = day
    @year = year
  end
end

class Stars < Body
  attr_accessor :mass, :month
  def intialize(name, mass, type)
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

sys1 = System.new
sun = Stars.new('the sun', 1000, 'g-type')
earth = Planet.new('Earth', 1000, 500, 200)
moon = Moons.new('moon', 10000, 2)
sys1.add(sun)
sys1.add(earth)
sys1.add(moon)
p sys1
p sys1.total_mass
