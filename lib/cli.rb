class CLI 

        def start 
           puts "Welcome User."
            # API.get_brewery
            self.menu
        end 

         
   
        def menu
            
            puts "Do you want to see Breweries?"
            puts "Enter 'yes' to see Breweries."
            puts "Enter 'no' to see Breweries."
            sleep(2)
            puts "\n"
            user_input = gets.strip.downcase

            if user_input == "yes" || user_input == "y"
                puts "Good Choice!"
            end 
        
           
        end 

end 