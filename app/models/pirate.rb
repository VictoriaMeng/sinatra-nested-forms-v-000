class Pirate
  attr_accessor :name, :weight, :height, :ships

  @@all = []

  def initialize(args)
    # binding.pry
    args.each { |key, value| self.send("#{key}=", value) }
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all = []
  end
end
