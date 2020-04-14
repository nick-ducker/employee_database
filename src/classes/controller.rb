require_relative "roster"
require_relative "employee"


class Controller
@@database_count = 1
@@fired_employees


    attr_reader :current_database, :databases

    def initialize 
        @databases = []
    end

    def create_database(name)
        name = Roster.new(name)
        @databases << name
        @current_database = name
    end

    def destroy_database(name)
        @current_database = nil
    end

    def list_databases
        @databases
    end

    def switch_database(name)
        switch = @databases.select{|x| x.name == name}
        @current_database = switch.first ############
    end

    def add_employee(employeename, position, salary)
        employeename = Employee.new(employeename,position,salary)
        @current_database.add_to_roster(employeename)
    end

    def remove_employee
        #get to this
    end

    def employee_details
        @current_database.current_roster
    end

    def salary_details

    end

    def position_details

    end

end