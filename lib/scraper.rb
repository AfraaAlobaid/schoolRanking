require 'nokogiri'

class Scraper
    def initialize
    end

    def get_page
        puts "Hey!"
        #puts Nokogiri::HTML(open("https://bettereducation.com.au/school/primary/sa/adelaide_top_government_primary_schools.aspx"))
    end
end


Scraper.new.get_page