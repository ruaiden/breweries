class API

    def self.get_brewery
        url = "https://api.openbrewerydb.org/breweries?per_page=50"
        uri = URI(url)
        response = Net::HTTP.get(uri) 
        hash = JSON.parse(response)
      
        #--------------------------#
        
        #Keys we want to take information from in our API:
        #name
        #brewery_type
        #city
        #state
        #phone
        #website_url
    
        hash.each do |brewery_hash|
            brewery = Breweries.new
            brewery.name = brewery_hash["name"]
            brewery.brewery_type = brewery_hash["brewery_type"]
            brewery.city = brewery_hash["city"]
            brewery.state = brewery_hash["state"]
            brewery.phone = brewery_hash["phone"]
            brewery.website_url = brewery_hash["website_url"]
        
        end 
    end 

        def self.brewpub
            #brewpub api searched the breweries api by_type. This then lets us select just brewpub breweries
            new_url = "https://api.openbrewerydb.org/breweries?by_type=brewpub&per_page=43"
            uri = URI(new_url)
            response = Net::HTTP.get(uri) 
            search_hash = JSON.parse(response)
            
            search_hash.each do |brewery_type|
                micro = Type.new
                micro.name = brewery_type["name"]
                micro.brewery_type = brewery_type["brewery_type"]
                micro.city = brewery_type["city"]
                micro.state = brewery_type["state"]
                micro.phone = brewery_type["phone"]
                micro.website_url = brewery_type["website_url"]
            end 
        end 
     
end