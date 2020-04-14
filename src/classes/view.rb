require_relative "../modules/uicomps"
require_relative "controller"

class App

    include UiComponents

    attr_accessor :running

    def initialize 
        @running = true
        @controller = Controller.new
        main
    end

    def main

        while @running
            UiComponents.clear_banner
            UiComponents.options
            input = UiComponents.validate 
            case input
            when "c"
                @controller.create_database(UiComponents.create_database)
                UiComponents.set_database(@controller)
            when "d"
                @controller.destroy_database(UiComponents.destroy_database)
                UiComponents.set_database(@controller)
            when "a"
                arr = UiComponents.add_employee
                @controller.add_employee(arr[0],arr[1],arr[2])
            when "l"
                UiComponents.clear_banner
                display_roster(@controller.employee_details)
                UiComponents.enter
            when "s"
                UiComponents.clear_banner
                show_databases(@controller.list_databases)
                UiComponents.enter
            when "w"
                @controller.switch_database(UiComponents.switch_databases(@controller.list_databases))
                UiComponents.set_database(@controller) #######################
            when "q"
                UiComponents.quit
                @running = false
            end

        end

    end


end