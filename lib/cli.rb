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
            user_choice
        
           
        end
        
        def display_breweries
           #display all the object that are in the @@all variable
           Breweries.all.each.with_index(1) do |beer,i|
                puts "#{i}. #{beer}."
            #I want these to be the name of the brewery not just the object id. 
        
           end
        end 

        def user_choice
            puts "Enter number of brewery you want to know more?"

            index = gets.strip.to_i - 1

            #index has to be valid number between 1 and 20

            until index.between?(0, Breweries.all.length - 1)
                #if user does not input this, keep asking for user input
                index = gets.strip.to_i - 1
            end
        end 

end 