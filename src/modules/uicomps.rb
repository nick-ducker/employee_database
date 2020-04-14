module UiComponents
    def self.set_database(controller)
        @database = controller.current_database.name
    end

    def self.clear_banner
        system 'clear'
        puts "=============================================="
        puts "    -------------------------------------     "
        puts "       BIG-BROTHER DATABASE INTERFACE         "
        puts "    -------------------------------------     "
        puts "=============================================="
        puts "Current Database: #{@database}"
        puts "=============================================="
    end
    
    def self.options 
        puts "[C]reate Database"
        puts "[D]estroy Database"
        puts "[S]how Databases"
        puts "s[W]itch Databases"
        puts "[A]dd Employee"
        puts "[L]ist Employees"
        puts "[Q]uit" 
        puts "=============================================="
        puts "What would you like to do?"
    end

    def self.validate
        input = gets.chomp.downcase
            if input == "c"|| input == "d"|| input == "a" || input == "l" || input == "q" || input == "s" || input == "w"
                return input
            else
                puts "That's not a valid input"
                sleep(1)     
            end      
    end

    def self.create_database
        clear_banner
        puts "What is the name of the new database?"
        name = gets.chomp
        clear_banner
        puts "Database created"
        sleep (1)
        return name
    end

    def self.destroy_database
        clear_banner
        puts "Please enter the name of the database you wish to dissolve"
        name = gets.chomp
        clear_banner
        puts "Database dissolved"
        sleep (1)
        return name
    end

    def self.add_employee
        clear_banner
        puts "What is the employees name?"
        name = gets.chomp
        clear_banner
        puts "What is the employees position?"
        position = gets.chomp
        clear_banner
        puts "what is the employees salary?"
        salary = gets.chomp
        clear_banner
        puts "Employee added"
        sleep (1)
        return name, position, salary
    end

    def show_databases(arr)
        arr.each{|x| puts "#{x.name}"}
    end

    def display_roster(arr)
        arr.each{|x| puts "#{x.details[:name]} : #{x.details[:position]} : #{x.details[:salary]}"}
    end

    def self.switch_databases(arr)
        clear_banner
        puts "Databases: "
        arr.each{|x| puts "#{x.name}"}
        puts "enter the name of the database you wish to switch to"
        input = gets.chomp
        return input
    end

    def self.quit
        clear_banner
        puts "Thanks for using the system"
    end

    def self.enter
        puts ""
        puts "Press enter to continue"
        gets
    end

end