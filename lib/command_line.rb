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

        input_valid = false
        #school_nums = []
        while !input_valid
            input = gets.strip.to_i
            if input == 1
                input_valid = true
                puts "Top Government Primary Schools in Adelaide"
                School.all.each_with_index do |school, index|
                    if school.sector == "Government"
                        puts "#{index+1}. #{school.name}"
                    end
                end
            elsif input == 2
                input_valid = true
                puts "Top Non-government Primary Schools in Adelaide"
                School.all.each_with_index do |school, index|
                    if school.sector == "Non-government"
                        puts "#{index+1}. #{school.name}"
                    end
                end
            elsif input == 3
                input_valid = true
                puts "Top Government and Non-government Primary Schools in Adelaide"
                School.all.each_with_index do |school, index|
                        puts "#{index+1}. #{school.name}"
                end
            else 
                puts "Couldn't recognise your choice. Try again"
            end
        end

        puts ""
        puts "Press school number to know more about the school or press 0 to start over"

        input_valid = false
        while !input_valid
            input = gets.strip.to_i
            if input >= 1 && input <= 10
                input_valid = true
                school = School.all[input-1]
                puts "Name: #{school.name}"
                puts "Overall score: #{school.overall_score}"
                puts "Total enrolment: #{school.total_enrolment}"
                puts "Locality: #{school.locality}"
                puts "Sector: #{school.sector}"
            else 
                puts "Couldn't recognise your choice. Try again"
            end
        end  
    end
end

CommandLine.new.call