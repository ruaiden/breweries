require "pry"

class Breweries

    attr_accessor :id, :name, :brewery_type, :city, :state, :phone, :website_url

    @@all =[]

    def initialize
        @@all << self
    end 

    def self.all
        binding.pry
        @@all
    end
end 