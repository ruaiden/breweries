class API

    def self.get_brewery
        url = "https://api.openbrewerydb.org/breweries"
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
        #updated_at

        beer = Breweries.new
        
    end


    

end  