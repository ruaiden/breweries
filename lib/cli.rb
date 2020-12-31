class CLI 

        def start 
           puts "Welcome User."
           
            API.get_brewery
            
            self.menu
        
        end 

         
   
        def menu
            #menu gives options to the user to move forward or exit
            puts "Do you want to see Breweries?"
            puts "Enter 'yes' to see Breweries."
            puts "Enter 'no' to see Breweries."
            sleep(2)
            puts "\n"
            user_input = gets.strip.downcase
            
            if user_input == "yes" || user_input == "y"
                
                puts "Good Choice!"
            end 

            display_breweries
        
           
        end
        
        def display_breweries
           #display all the object that are in the @@all variable
           Breweries.all.each.with_index(1) do |beer,i|
                puts "#{i}. #{beer}."
            #I want these to be the name of the brewery not just the object id. 
        
           end
        end 

end 