class API

    def self.get_brewery
        url = "https://api.openbrewerydb.org/breweries"
        uri = URI(url)
        response = NET::HTML.get(uri)
        hash = JSON.parse(response)
    

        
    end


    

end 