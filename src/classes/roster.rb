class Roster 

    attr_accessor :current_roster, :name

    def initialize(name)
        @name = name
        @current_roster = []
        
    end

    def add_to_roster(var)
        @current_roster << var
    end

end