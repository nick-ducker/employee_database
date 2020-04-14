class Employee

    attr_reader :details

    def initialize(name, position, salary)
        @details = {name: name, position: position, salary: salary}
    end
end