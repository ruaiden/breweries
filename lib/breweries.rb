
class Breweries
    
    attr_accessor :id, :name, :brewery_type, :city, :state, :phone, :website_url

    @@all =[]

    def initialize
        @@all << self
        
    end 

    def self.all
        @@all
    end
end 

class Type
    
    attr_accessor :id, :name, :brewery_type, :city, :state, :phone, :website_url

    @@all =[]

    def initialize
        @@all << self
    end 

    def self.all
        @@all
    end

end