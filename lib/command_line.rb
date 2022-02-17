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

        if input == 1
            School.all.each do |school|
            end
        end
        School.all.each_with_index do |school, index|
            puts "#{index+1}. #{school.name}"
        end
        puts ""
        puts "Press school number to know more about the school"

        
    end
    
end