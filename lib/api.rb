class API

    def self.get_brewery
        url = "https://api.openbrewerydb.org/breweries"
        uri = URI(url)
        response = NET::HTML.get(uri)
        hash = JSON.parse(response)
        
        array_of_data = hash[]


        array_of_data.each do |beer_hash| 
            beer = Breweries.new
            beer.id = beer_hash["id"]
            beer.name = beer_hash["name"]
            beer.brewery_type = beer_hash["brewery_type"]
            beer.city = beer_hash["city"]
            beer.state = beer_hash["state"]
            beer.phone = beer_hash["phone"]
            beer.website_url = beer_hash["website_url"]
        end 

    end


    

end 