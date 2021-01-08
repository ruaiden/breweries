class API

    def self.get_brewery
        url = "https://api.openbrewerydb.org/breweries?per_page=30"
        uri = URI(url)
        response = Net::HTTP.get(uri) 
        hash = JSON.parse(response)
      
        #above code takes the api url
        #runs URI on the url 
        #We then run Net::HTTP and get to get all the information in our API
        #Then we parse our JSON so that the information are in hashes which are easier to look at.

        #--------------------------#

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
        
            #Keys that do not work street, country, longitude, latitude, updated_at
            #and created_at

        end 
    end 

        def self.brewpub
            new_url = "https://api.openbrewerydb.org/breweries?by_type=brewpub&per_page=22"
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