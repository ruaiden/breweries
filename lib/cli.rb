class CLI 

        def start 
           puts "Welcome User."
           API.get_brewery
           API.brewpub
           self.menu
            
        end 

        def menu
            #menu gives options to the user to move forward or exit
            puts "Do you want to see all Breweries?"
            puts "Enter 'yes' to see all Breweries."
            puts "Enter 'brewpub' to see beer-focused restaurant/bar with a brewery on-premise"
            puts "Enter 'no' to see Exit."
            sleep(2)
            puts "\n"
            user_input = gets.strip.downcase
            
            if user_input == "yes" || user_input == "y" 
                puts "Good Choice!"
                display_breweries
                user_choice
                menu

            elsif user_input == "brewpub" || user_input == "Brewpub"
                display_micro_breweries
                user_input_type
                menu
                
            end            
        end
        
        def display_breweries
           #display all the object that are in the @@all variable
           Breweries.all.each.with_index(1) do |beer,i|
                puts "#{i}. #{beer.name}."
           
        
           end
        end 

        def display_micro_breweries
            #display all the object that are in the @@all variable
            Type.all.each.with_index(1) do |brewery,i|
                 puts "#{i}. #{brewery.name}."
             
         
            end
        end 

        def user_choice
            puts "Enter number of brewery you want to know more?"
            index = gets.strip.to_i - 1

            #index has to be valid number between 1 and 20

            until index.between?(0, Breweries.all.length - 1)
                #if user does not input this, keep asking for user input
                puts "Sorry Invalid. Choose a Valid Number."
                index = gets.strip.to_i - 1
            end
           
            brewery_instance = Breweries.all[index]
            display_brewery_details(brewery_instance)
            
        end 

        def display_brewery_details(drink_instance)
            sleep(1)
            puts "\n"
            puts drink_instance.name
            puts "\n"
            sleep(1)
            
            puts "Type of Brewery: #{drink_instance.brewery_type.capitalize}"
            sleep(1)
            puts "City: #{drink_instance.city.capitalize}"
            sleep(1)
            puts "State: #{drink_instance.state.capitalize}"
            sleep(1)
            puts "Phone Number: #{drink_instance.phone}"
            sleep(1)
            puts "Website: #{drink_instance.website_url}"
            sleep(1)
            puts "\n"
            
        end

        def user_input_type
            puts "Enter number of brewery you want to know more?"
            index2 = gets.strip.to_i - 1

            until index2.between?(0,Type.all.length-1)
                puts "Sorry Invalid. Choose a Valid Number."
                index2 = gets.strip.to_i - 1
            end 


            
            brewery_type_instance = Type.all[index2]
            type_of_breweries_display(brewery_type_instance)
        
        end

        def type_of_breweries_display(brewery_type_instance)

           puts brewery_type_instance.name
            puts "\n"
            sleep(1)
            puts "Type of Brewery: #{brewery_type_instance.brewery_type.capitalize}"
            sleep(1)
            puts "City: #{brewery_type_instance.city.capitalize}"
            sleep(1)
            puts "State: #{brewery_type_instance.state.capitalize}"
            sleep(1)
            puts "Phone Number: #{brewery_type_instance.phone}"
            #information is not being pulled
            sleep(1)
            puts "Website: #{brewery_type_instance.website_url}"
               #information is not being pulled
            sleep(1)
            puts"\n"
             
        end 
       
end  