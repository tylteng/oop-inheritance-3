class System
@@bodies = []

  def self.solarsystem
    p @@bodies
  end

  def add(body)
    @@bodies << body
  end

  def total_mass
    sum = 0
    @@bodies.each do |x|
      sum += x.mass
    end
    puts sum
  end
end


class Body < System
attr_accessor :name, :mass

  def initialize(name, mass)
    @name = name
    @mass = mass
    self.add(self)
  end
end

class Planet < Body

  def day(hours)
    @day = hours
  end

  def year(months)
    @year = months
  end

end

class Star < Body

  def type(type)
    @type = type
  end

end

class Moon < Body

  def month(time)
    @orbit_time = time
  end

  def planet_orbit(planet)
    @orbit = planet
  end
end


earth = Planet.new('Earth', 30000000)
earth.day(24)
earth.year(12)
System.solarsystem
