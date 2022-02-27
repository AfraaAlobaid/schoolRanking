require_relative './scraper.rb'
require_relative './school.rb'

class CommandLine

    def call
        Scraper.make_schools
        puts "Welcome to Top Schools App"
        puts "This App displays the 10 top primary schools in Adelaide, Australia"
        start
    end

    def start
        puts ""
        puts ""
        puts "Press 1 to view government schools only"
        puts "Press 2 to view non-goverenment schools"
        puts "Press 3 to view the whole list "

        input = gets.strip.to_i
        input_valid? = false
        while !input_valid?
            if input == 1
                input_valid? = true
                School.all.each_with_index do |school, index|
                    if school.locality == "Government"
                        puts "#{index+1}. #{school.name}"
                    end
                end
            elsif input == 2
                input_valid? = true
                School.all.each_with_index do |school, index|
                    if school.locality == "Non-government"
                        puts "#{index+1}. #{school.name}"
                    end
                end
            elsif input == 3
                input_valid? = true
                School.all.each_with_index do |school, index|
                        puts "#{index+1}. #{school.name}"
                end
            else 
                puts "Couldn't recognise your choice. Try again"
            end
        end

        puts ""
        puts "Press school number to know more about the school"

        
        
    end
    
end