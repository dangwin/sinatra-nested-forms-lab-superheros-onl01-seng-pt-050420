class Hero
attr_accessor :name, :power, :bio

@@all = []

def initialize(details)
  @name = details[:name]
  @power = details[:power]
  @bio = details[:bio]
  @@all << self
end

def self.all
  @@all
end
end